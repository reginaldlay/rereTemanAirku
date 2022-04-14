//
//  ViewController.swift
//  rereTemanAirku
//
//  Created by Reginald Lay on 08/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var exitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressExitBtn(_ sender: Any) {
        UIApplication.shared.perform(#selector(NSXPCConnection.suspend))
    }
    
}
