//
//  SessionViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit

class SessionViewController: UIViewController {
    
    @IBOutlet weak var sesi2Btn: UIButton!
    @IBOutlet weak var sesi3Btn: UIButton!
    @IBOutlet weak var sesi4Btn: UIButton!
    @IBOutlet weak var infoBanner: UIButton!
    @IBOutlet weak var infoBannerText: UITextView!
    @IBOutlet weak var infoRereImage: UIImageView!
    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleOffInfoBanner()
    }
    
    @IBAction func pressSesi2(_ sender: Any) {
        toggleOnInfoBanner()
    }
    
    @IBAction func pressSesi3(_ sender: Any) {
        toggleOnInfoBanner()
    }
    
    @IBAction func pressSesi4(_ sender: Any) {
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
        sesi2Btn.isEnabled = true
        sesi3Btn.isEnabled = true
        sesi4Btn.isEnabled = true
    }
    
    func toggleOnInfoBanner() {
        infoBanner.isHidden = false
        infoBannerText.isHidden = false
        infoRereImage.isHidden = false
        closeBtn.isHidden = false
        sesi2Btn.isEnabled = false
        sesi3Btn.isEnabled = false
        sesi4Btn.isEnabled = false
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
