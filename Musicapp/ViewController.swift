//otp printed in strotp variable <alsoallows strings

import UIKit
public var a = false
public var b = false
public let white = #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998809695, alpha: 1) // title
public let txtborder = #colorLiteral(red: 0.9098039216, green: 0.9176470588, blue: 0.9294117647, alpha: 1) // text
public let btngrey = #colorLiteral(red: 0.7764705882, green: 0.8, blue: 0.8235294118, alpha: 1)  // buttongrey
public let clr = #colorLiteral(red: 1, green: 0.3568627451, blue: 0.4431372549, alpha: 1) //active__btn
public var newview = false
public var strotp: Int?

public func dosegue(_ id: String?,_ from:UIViewController,_ to: UIViewController) {
    let s = UIStoryboardSegue(identifier: id, source: from, destination: to)
    s.perform()
}

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginbtn: UIButton!
    
    @objc func onTextChange()  {
        if !(username.text!.isEmpty) {
            username.layer.borderColor = clr.cgColor
            a = true
        } else {
            username.layer.borderColor = txtborder.cgColor
            a = false
        }
    if !(password.text!.isEmpty) {
        password.layer.borderColor  = clr.cgColor
        b = true
    } else {
        password.layer.borderColor = txtborder.cgColor
        b = false
    }
    if (a && b) {
        loginbtn.backgroundColor = clr
    } else {
        a = false; b = false
        loginbtn.backgroundColor = btngrey
    }
}
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        username.layer.borderWidth = 0.8
        password.layer.borderWidth = 0.8
        loginbtn.layer.borderWidth = 0
        username.addTarget(self, action: #selector(onTextChange), for: UIControl.Event.editingChanged)
        password.addTarget(self, action: #selector(onTextChange), for: UIControl.Event.editingChanged)
    
    }
    
}
