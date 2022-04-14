//
//  StageViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit

class StageViewController: UIViewController {

    var isSessionDone: Bool = false
    
    @IBOutlet weak var backStageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressBackStageBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "ChooseStageFromStageView", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ChooseStageFromStageView" {
            let chooseStageViewController = segue.destination as! ChooseStageViewController
            
            if isSessionDone == true {
                chooseStageViewController.isSessionDone = true
            } else {
                chooseStageViewController.isSessionDone = false
            }
        }
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
