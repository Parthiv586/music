import UIKit
public var count = 0
public class OTPView: UIStackView {
    var textFieldArray = [OTPTextField]()
    var numberOfOTPdigit = 4
    var t:String = ""
    var filledotp = 0
    var isfilled = false
//    var count = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
     //   setupStackView()
      //  setTextFields()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupStackView()
        setTextFields()
        strotp = Int(t)
        
    }
    
    private func setupStackView() {
        self.backgroundColor = .clear
        self.isUserInteractionEnabled = true
        self.translatesAutoresizingMaskIntoConstraints = false
        self.contentMode = .center
        self.distribution = .fillEqually
        self.spacing = 16
    }
    
    private func setTextFields() {
        
            for i in 0..<numberOfOTPdigit {
            let field = OTPTextField()
            field.tag = i
            field.keyboardType = .phonePad
            textFieldArray.append(field)
            addArrangedSubview(field)
            field.delegate = self
            field.backgroundColor = .white
            field.layer.opacity = 1.0
            field.textAlignment = .center
            field.layer.shadowColor = UIColor.clear.cgColor
            field.layer.shadowOpacity = 0.1
            field.layer.cornerRadius = 10
            field.layer.borderWidth = 2.0
            field.layer.borderColor = txtborder.cgColor
            i != 0 ? (field.previousTextField = textFieldArray[i-1]) : ()
            i != 0 ? (textFieldArray[i-1].nextTextFiled = textFieldArray[i]) : ()
            
        }
    }
  
      
}

extension OTPView: UITextFieldDelegate {
   
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard  let field = textField as? OTPTextField else {
            return true
        }
        if !(string.isEmpty) {
            field.text = string
            field.textColor = UIColor(red: 0.642, green: 0.677, blue: 0.718, alpha: 1)
           //otp appending
            if field.text != "" {
                t.append(field.text!)
                    print(t)
            }
                //debug
                /*let ams = field.viewWithTag(0)
                print(type(of: ams!))
                filledotp += 1*/

            count += 1
            field.resignFirstResponder()
            field.layer.borderColor = clr.cgColor
            field.nextTextFiled?.becomeFirstResponder()
         //       resendview().islasttextfield(otp: t)
            return true
        } else {
            field.layer.borderColor = txtborder.cgColor
        }
                        if count == 3 {
                           print("last field")
                            resendview().checktext()
                        }
        return true
    }
   
}

class OTPTextField: UITextField {
    var previousTextField: UITextField?
    var nextTextFiled: UITextField?
    
    override func deleteBackward() {
        text = ""
      //  OTPView().textFieldArray.last?.addTarget(self, action: #selector(resendview().onTextChange), for: UIControl.Event.editingChanged)
        previousTextField?.becomeFirstResponder()
    }
}
