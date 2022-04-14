//
//  ChooseStageViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 11/04/22.
//

import UIKit

class ChooseStageViewController: UIViewController {
    
    @IBOutlet weak var quizBtn: UIButton!
    @IBOutlet weak var stage2Btn: UIButton!
    @IBOutlet weak var infoBanner: UIButton!
    @IBOutlet weak var infoBannerText: UITextView!
    @IBOutlet weak var infoRereImage: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    
    var isSessionDone: Bool = false
    var isQuizDone: Bool = false
    var saveQuiz: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toggleOffInfoBanner()
        
        if isSessionDone == true {
            quizBtn.setImage(UIImage(named: "unlock challenge"), for: .normal)
            quizBtn.isEnabled = true
        } else {
            quizBtn.setImage(UIImage(named: "lock challenge"), for: .normal)
            quizBtn.isEnabled = false
        }
        
        
        if isQuizDone == true {
            stage2Btn.setImage(UIImage(named: "unlock stage 2"), for: .normal)
            stage2Btn.isEnabled = true
            quizBtn.setImage(UIImage(named: "unlock challenge"), for: .normal)
            quizBtn.isEnabled = true
        } else {
            stage2Btn.setImage(UIImage(named: "lock session"), for: .normal)
            stage2Btn.isEnabled = false
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressStage2Btn(_ sender: Any) {
        toggleOnInfoBanner()
    }
    
    @IBAction func pressCloseInfo(_ sender: Any) {
        toggleOffInfoBanner()
    }
    
    // Functions
    
    func toggleOffInfoBanner() {
        infoBanner.isHidden = true
        infoBannerText.isHidden = true
        infoRereImage.isHidden = true
        closeBtn.isHidden = true
    }
    
    func toggleOnInfoBanner() {
        infoBanner.isHidden = false
        infoBannerText.isHidden = false
        infoRereImage.isHidden = false
        closeBtn.isHidden = false
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
