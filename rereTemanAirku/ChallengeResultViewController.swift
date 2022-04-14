//
//  ChallengeResultViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit
import AVFoundation

class ChallengeResultViewController: UIViewController {
    
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var starImage: UIImageView!
    @IBOutlet weak var rereResultImage: UIImageView!
    
    var totalAnswer: Int = 0
    var isQuizDone: Bool = false
    var avPlayerResult = AVAudioPlayer()
    
    var songName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if totalAnswer >= 0 && totalAnswer <= 2 {
            titleImage.image = UIImage(named: "mainLagi")
            starImage.image = UIImage(named: "Star - Main Lagi")
            
            let sadGIF = UIImage.gifImageWithName("gif-sad")
            rereResultImage.image = sadGIF
            
            songName = "Challenge Result - Main Lagi? - Stage"
        }
        
        else if totalAnswer >= 3 && totalAnswer <= 4 {
            titleImage.image = UIImage(named: "hebat")
            starImage.image = UIImage(named: "Star - Hebat")
            
            let clapGIF = UIImage.gifImageWithName("gif-clap")
            rereResultImage.image = clapGIF
            
            songName = "Challenge Result - Hebat"
        }
        
        else {
            titleImage.image = UIImage(named: "luarBiasa")
            starImage.image = UIImage(named: "Star - Luar Biasa")
            
            let lompatGIF = UIImage.gifImageWithName("gif-lompat")
            rereResultImage.image = lompatGIF
            
            isQuizDone = true
            
            songName = "Challenge Result - Luar Biasa"
        }
        
        let sound = Bundle.main.path(forResource: songName, ofType: "m4a")
                do {
                    avPlayerResult = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                } catch {
                    debugPrint(error)
                }
        avPlayerResult.play()
        
    }
    
    @IBAction func retryChallengeButton(_ sender: Any) {
        avPlayerResult.stop()
    }
    
    @IBAction func nextChallengeButton(_ sender: Any) {
        avPlayerResult.stop()
        self.performSegue(withIdentifier: "QuizToChooseStage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "QuizToChooseStage" {
            let chooseStageViewController = segue.destination as! ChooseStageViewController
            
            if isQuizDone == true {
                chooseStageViewController.isQuizDone = true
            } else {
                chooseStageViewController.isQuizDone = false
            }
        }
    }
}
