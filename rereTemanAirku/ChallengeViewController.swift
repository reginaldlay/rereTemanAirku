//
//  ChallengeViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit
import AVFoundation

class ChallengeViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var challengeBanner: UIButton!
    @IBOutlet weak var imageA: UIButton!
    @IBOutlet weak var imageB: UIButton!
    @IBOutlet weak var atauBtn: UIButton!
    @IBOutlet weak var questionBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var kidPickA: UIImageView!
    @IBOutlet weak var kidPickB: UIImageView!
    @IBOutlet weak var backQuizBtn: UIButton!
    @IBOutlet weak var selesaiBtn: UIButton!
    @IBOutlet weak var quizInstructionText: UITextView!
    @IBOutlet weak var quizInstructionBox: UIButton!
    @IBOutlet weak var duckQuizImage: UIImageView!
    
    // Audio
    var avPlayer = AVAudioPlayer()
    var avPlayerQuiz = AVAudioPlayer()
    var promptQuiz: String = "Challenge - Kids"
    
    // Quiz Data
    var arrOfQuiz: [Quiz] = []
    var feederQ = QuizStage1Feeder()
    var pointTrueA: Int = 0
    var pointTrueB: Int = 0
    var chooseA: Int = 0
    var chooseB: Int = 0
   
    // Quiz Control
    var currQuiz: Int = 0
    var quizRunning = false
    var isSubmit: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set initial display of Challenge Page
        startBtn.setImage(UIImage(named: "play stage - button mulai"), for: .normal)
        challengeBanner.isHidden = true
        imageA.isHidden = true
        imageB.isHidden = true
        atauBtn.isHidden = true
        questionBtn.isHidden = true
        challengeBanner.isHidden = true
        kidPickA.isHidden = true
        kidPickB.isHidden = true
        selesaiBtn.isHidden = true
        quizInstructionText.isHidden = false
        quizInstructionBox.isHidden = false
        duckQuizImage.isHidden = false
        
        // Insert quiz
        arrOfQuiz = feederQ.feedQuizStage1()
    }
    
    // Actions
    @IBAction func pressLanjutBtn(_ sender: Any) {
        if quizRunning == false {
            toggleQuizOn()
            prepareAudioQuiz()
            avPlayer.play()
            startBtn.isEnabled = false
            quizInstructionText.isHidden = true
            quizInstructionBox.isHidden = true
            duckQuizImage.isHidden = true
        } else {
            if currQuiz <= arrOfQuiz.count-1 {
                evaluateQuiz()
                avPlayerQuiz.play()
                changeQuiz()
                kidPickA.isHidden = true
                kidPickB.isHidden = true
            }
        }
    }
    
    @IBAction func pressSelesaiBtn(_ sender: Any) {
        avPlayer.stop()
        
        self.performSegue(withIdentifier: "ShowResult2View", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "ShowResult2View" {
            let challengeResultView = segue.destination as! ChallengeResultViewController
            
            challengeResultView.totalAnswer = pointTrueA + pointTrueB
        }
    }
    
    
    @IBAction func pressImageA(_ sender: Any) {
        kidPickA.isHidden = false
        kidPickB.isHidden = true
        isSubmit = true
        chooseA = 1
        chooseB = 0
        startBtn.isEnabled = true
    }
    
    @IBAction func pressImageB(_ sender: Any) {
        kidPickA.isHidden = true
        kidPickB.isHidden = false
        isSubmit = true
        chooseA = 0
        chooseB = 1
        startBtn.isEnabled = true
    }
    
    @IBAction func pressBackQuizBtn(_ sender: Any) {
        avPlayer.stop()
    }
    
    // Functions
    func toggleQuizOn() {
        challengeBanner.isHidden = false
        imageA.isHidden = false
        imageB.isHidden = false
        atauBtn.isHidden = false
        questionBtn.isHidden = false
        challengeBanner.isHidden = false
        startBtn.setImage(UIImage(named: "button lanjut"), for: .normal)
        quizRunning = true
    }
    
    func prepareAudioQuiz() {
        let sound = Bundle.main.path(forResource: "happy", ofType: "m4a")
                do {
                    avPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                } catch {
                    debugPrint(error)
                }
        avPlayer.volume = 0.3
        
        let soundQuiz = Bundle.main.path(forResource: "Challenge", ofType: "m4a")
                do {
                    avPlayerQuiz = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundQuiz!))
                } catch {
                    debugPrint(error)
                }
    }
    
    func changeQuiz() {
        if currQuiz <= arrOfQuiz.count-1 {
            imageA.setImage(UIImage(named: arrOfQuiz[currQuiz].quizImageA), for: .normal)
            imageB.setImage(UIImage(named: arrOfQuiz[currQuiz].quizImageB), for: .normal)
            challengeBanner.setImage(UIImage(named: arrOfQuiz[currQuiz].quizBanner), for: .normal)
            isSubmit = false
            startBtn.isEnabled = false
        } else {
            selesaiBtn.isHidden = false
        }
    }
    
    func evaluateQuiz() {
        if chooseA == 1 && arrOfQuiz[currQuiz].isACorrect == true {
            pointTrueA += 1

        }
        if chooseB == 1 && arrOfQuiz[currQuiz].isBCorrect == true {
            pointTrueB += 1
        }
        currQuiz += 1
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
