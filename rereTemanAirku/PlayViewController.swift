//
//  PlayViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit
import AVFoundation

class PlayViewController: UIViewController {

    // Elapse Time
    var countNum = 0
    var playRunning = false
    var timer = Timer()
    
    // Outlets
    @IBOutlet weak var pauseBtn: UIButton!
    @IBOutlet weak var timerText: UILabel!
    
        // Prompt
        @IBOutlet weak var promptText: UITextView!
        @IBOutlet weak var promptAvatar: UIImageView!
        @IBOutlet weak var promptImage: UIImageView!
        @IBOutlet weak var nextPromptBtn: UIButton!
        @IBOutlet weak var prevPromptBtn: UIButton!
        @IBOutlet weak var promptAudio: UILabel!
        @IBOutlet weak var backgroundAudio: UILabel!
    
    // Prompt Data
    var arrOfPrompt: [Prompt] = []
    var feeder = PromptStage1Feeder()
   
    // Prompt Control
    var currPrompt: Int = 0
    
    // Audio
    var avPlayerPrompt = AVAudioPlayer()
    var avPlayerBG = AVAudioPlayer()
    var BG: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial display of Play Page
        pauseBtn.setTitle("MULAI", for: .normal)
        timerText.text = "00:00"
        promptText.isHidden = true
        promptAvatar.isHidden = true
        nextPromptBtn.isEnabled = false
        prevPromptBtn.isEnabled = false
        promptAudio.isHidden = true
        backgroundAudio.isHidden = true
        
        // Insert prompt
        arrOfPrompt = feeder.feedPromptStage1()
    }
    
    
    
    
    
    
    

    // Actions
        
        //Play Buttons
        @IBAction func pressStart(_ sender: Any) {
            if playRunning == false && timerText.text == "00:00" {
               promptText.isHidden = false
               promptAvatar.isHidden = false
               changePrompt()
               changePlayState()
               avPlayerPrompt.play()
               avPlayerBG.play()
            } else {
                if playRunning == false && timerText.text != "00:00" {
                    changePlayState()
                    navigateViewPrompt()
                    avPlayerPrompt.play()
                } else {
                    timer.invalidate()
                    playRunning = false
                    pauseBtn.setTitle("LANJUT", for: .normal)
                    nextPromptBtn.isEnabled = false
                    prevPromptBtn.isEnabled = false
                    avPlayerPrompt.stop()
                }
            }
        }
    
        // Prompt Navigation Buttons
        @IBAction func pressPrevPromptBtn(_ sender: Any) {
            
            // Validate if it's already on the first page
                    if currPrompt == 0 {
                        currPrompt = arrOfPrompt.count-1
                    } else {
                        currPrompt -= 1
                    }
                    changePrompt()
                    avPlayerPrompt.play()
        }
        
        @IBAction func pressNextPromptBtn(_ sender: Any) {
            
            // Validate if it's already on the last page
                    if currPrompt == arrOfPrompt.count-1 {
                        currPrompt = 0
                    } else {
                        currPrompt += 1
                    }
                    changePrompt()
                    avPlayerPrompt.play()
        }
    
        
    
    // Functions
    
        // Show Timer
        @objc func update() {
            countNum+=1
            let s = (countNum) % 60
            let m = (countNum - s) / 60 % 3600
            timerText.text = String (format: "%02d:%02d", m,s)
        }
        
        func changePlayState() {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(PlayViewController.update), userInfo: nil, repeats: true)
            playRunning = true
            pauseBtn.setTitle("JEDA", for: .normal)
        }
        
        // Set Prompt Navigation Visibility
        func navigateViewPrompt() {
            switch currPrompt {
            case 0:
                nextPromptBtn.isEnabled = true
                prevPromptBtn.isEnabled = false

            case arrOfPrompt.count-1:
                nextPromptBtn.isEnabled = false
                prevPromptBtn.isEnabled = true

            default:
                nextPromptBtn.isEnabled = true
                prevPromptBtn.isEnabled = true
            }
        }
        
        // Change Prompt
        func changePrompt() {
                promptImage.image = arrOfPrompt[currPrompt].promptImage
                promptAvatar.image = arrOfPrompt[currPrompt].rereAvatar
                promptAudio.text = arrOfPrompt[currPrompt].promptAudio
                backgroundAudio.text = arrOfPrompt[currPrompt].backgroundAudio
                promptText.text = arrOfPrompt[currPrompt].promptText
                navigateViewPrompt()
                changePromptAudio()
                changePlayBGAudio()
            if arrOfPrompt[currPrompt].isActivity {
                promptText.font = UIFont.boldSystemFont(ofSize: 20.0)
            } else {
                promptText.font = UIFont.systemFont(ofSize: 18.0)
            }
        }
    
        // Change Prompt Audio every prev and next
        func changePromptAudio() {
            let sound = Bundle.main.path(forResource: arrOfPrompt[currPrompt].promptAudio, ofType: "m4a")
                    do {
                        avPlayerPrompt = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    } catch {
                        debugPrint(error)
                    }
        }
    
        // Change Background Audio every prev and next if the next one is different
        func changePlayBGAudio() {
                        
            if BG != arrOfPrompt[currPrompt].backgroundAudio {
                BG = arrOfPrompt[currPrompt].backgroundAudio
                let soundBG = Bundle.main.path(forResource: BG, ofType: "mp3")
                        do {
                            avPlayerBG = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundBG!))
                        } catch {
                            debugPrint(error)
                        }
                volumeBG()
                avPlayerBG.play()
            } else {
                avPlayerBG.play()
            }
        }
    
        // Background Audio Volume Splitter
        func volumeBG() {
            if BG == "ceria" {
                avPlayerBG.volume = 0.1
            } else {
                avPlayerBG.volume = 0.3
            }
        }
    
       
    
       
    
    
    
    // func change prompt audio
    
    
    // hit start then:
    // timer starts, first prompt shown with next and previous control clickable, button title changed to pause
    // start condition itu kalau timer 00:00:00
    
    // hit back then:
    // go back to stage page
    
    // hit pause then:
    // timer stops, all role play area blurred out, pause turn to continue, next-previous control disabled
    
    // hit continue
    // continue condition itu kalau timer ga 00:00:00
    // timer continue, all role play area back to normal, continue turn to pause, next-previous control enabled
    
    // hit finish then:
    // finish condition itu kalau sudah mencapai akhir index prompts
    // balik lagi ke stage view
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
