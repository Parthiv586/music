//
//  setnewpassordVC.swift
//  Musicapp
//
//  Created by Renukaben Rajpurohit on 26/08/21.
//

import Foundation
import UIKit

class setnewpasswordVC: UIViewController {
    @IBOutlet weak var labelpassword: UILabel!
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var setpassword: UIButton!
    override func viewDidLoad() {
        
        let attrs = [NSAttributedString.Key.font : UIFont(name: "Inter-SemiBold", size: 17)]
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: "Inter-Regular", size: 15)]

        let t1 = "Make sure your new passwords are "
        let b1 = "at least eight characters long"
        let t2 = " Strong password uses combination of uppercase and lowercase letters, symbols and numbers. But we don’t insist on it."
    
        let str1 = NSMutableAttributedString(string:t1, attributes:attrs2 as [NSAttributedString.Key : Any])

        let str2 = NSMutableAttributedString(string:b1, attributes:attrs as [NSAttributedString.Key : Any])
        let str3 = NSMutableAttributedString(string:t2, attributes:attrs2 as [NSAttributedString.Key : Any])
         str1.append(str2)
        str1.append(str3)
        labelpassword.attributedText = str1
        

        
                                                                       
        
    }
}
