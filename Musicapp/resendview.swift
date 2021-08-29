//
//  resendview.swift
//  Musicapp
//
//  Created by abc on 25/08/21.
//
import UIKit
import Foundation
class resendview: UIViewController {

    @IBOutlet weak var str: UILabel!
    @IBOutlet weak var otptext: OTPView!
    @IBOutlet weak var sendotp: UIButton!
    
    
    @objc func onTextChange()  {
        sendotp.isUserInteractionEnabled = true
        if !(otptext.textFieldArray.last?.text!.isEmpty ?? true) {
        sendotp.backgroundColor = clr
        } else {
            sendotp.isUserInteractionEnabled = false
            sendotp.backgroundColor = btngrey
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let otpView = OTPView()
        view.addSubview(otpView)
        otpView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        otpView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // bold resend tex
    
        let atrbold = attributedText(withString: str.text!, boldString: "Resend Code.", font: UIFont(name: "Inter-Medium", size: 15)!, color: clr)
        str.attributedText = atrbold
    }
}

//   custom string #############################
public func attributedText(withString string: String, boldString: String, font: UIFont,color: UIColor) -> NSAttributedString {
    let attributedString = NSMutableAttributedString(string: string,
                                                     attributes: [NSAttributedString.Key.font: font])
    let attr2 = [NSAttributedString.Key.foregroundColor: color]
    let range = (string as NSString).range(of: boldString)
    attributedString.addAttributes(attr2, range: range)
    // let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: font.pointSize)]
 //   attributedString.addAttributes(boldFontAttribute, range: range)
    return attributedString
}

