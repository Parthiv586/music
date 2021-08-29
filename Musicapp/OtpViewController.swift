//
//  Otp.swift
//  Musicapp
//
//  Created by abc on 25/08/21.

import Foundation
import UIKit

class OtpViewController: UIViewController  {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var veryfing: UIView!
    @IBOutlet weak var verifybtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let otpView = OTPView()
        view.addSubview(otpView)
        otpView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        otpView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        verifybtn.layer.cornerRadius = 25
        
        
        
                 /*   otpTextField.otpDelegate = self
                    otpTextField.configure(with: 4)
                    otpTextField.otpFontSize = 15
                    otpTextField.otpTextColor = .black
                    otpTextField.otpCornerRaduis = 5
                    otpTextField.otpFilledBorderColor = #colorLiteral(red: 1, green: 0.2906764746, blue: 0.5168812871, alpha: 1)
                    otpTextField.otpDefaultBorderColor = #colorLiteral(red: 1, green: 0.2906764746, blue: 0.5168812871, alpha: 1)
                otpTextField.otpBackgroundColor = .white

    
        let text = label.text!
        let resend = NSMutableAttributedString(string: text)
        let range1 = (text as NSString).range(of: "Resend Code")
        resend.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: 1.0, green: 0.358, blue: 0.444, alpha: 1), range: range1)
        label.attributedText = resend
// Create and add the Gesture Recognizer
       // let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(labelClicked(_:)))
       // label.addGestureRecognizer(guestureRecognizer)
          
            
            }
            
           @objc func labelClicked(_ sender: Any) {
        
            //        //  resend code -----------------------------------
        //        VIEW.addSubview(view2)
        //        self.view = view2
           print("Resend clicked...")
           }
        */
    
        }
    }

