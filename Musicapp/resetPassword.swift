//
//  SecondViewController.swift
//  Musicapp
//
//  Created by abc on 24/08/21.
//

import Foundation
import UIKit

class resetPassword: UIViewController {

    @IBOutlet weak var str: UILabel!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var resetbtn: UIButton!
    @objc func onTextChange()  {
        if !(email.text!.isEmpty) {
            email.layer.borderColor = clr.cgColor
        resetbtn.backgroundColor = clr
        } else {
            email.layer.borderColor = txtborder.cgColor
            resetbtn.backgroundColor = btngrey
        }
    }

    override func viewDidLoad() {
         super.viewDidLoad()
                
        email.layer.borderWidth = 0.8
        resetbtn.layer.borderWidth = 0
        
        email.addTarget(self, action: #selector(onTextChange), for: UIControl.Event.editingChanged)
     }
    
}
