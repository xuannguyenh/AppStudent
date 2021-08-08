//
//  RegisterViewController.swift
//  StudentApp
//
//  Created by Apple on 7/24/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextFiled: UITextField!
    @IBOutlet weak var comfirmTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterAction(_ sender: Any) {
        
        func checkValidateEmail(email: String) -> Bool {
            let emai = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let rex = NSPredicate(format: "SELF MATCHES %@", emai)
            return rex.evaluate(with: email)
        }

        func checkValidatePassWord(pass: String) -> Bool{
            let pass = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let rexPass = NSPredicate(format: "SELF MATCHES %@", pass)
            return rexPass.evaluate(with: pass)
        }

        if let email = emailTextField.text, let pass = passTextFiled.text, let rePass = comfirmTextField.text{
            if !checkValidateEmail(email: email){
                let alert = UIAlertController(title: "Email", message: "Email address not found", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
                    print("okay")
                }))
                present(alert, animated: true)
            }else if !checkValidatePassWord(pass: pass) && pass.count < 6{
                let aler = UIAlertController(title: "PassWord", message: "pas address not found", preferredStyle: .alert)
                aler.addAction(UIAlertAction(title: "Định dạng mật khẩu không đúng", style: .cancel, handler: { (_) in
                    print("Okey")
                }))
                present(aler, animated: true)
            }else if pass != rePass{
                let aler = UIAlertController(title: "RePassWord", message: "pass address not found", preferredStyle: .alert)
                aler.addAction(UIAlertAction(title: "Mật khẩu không trùng nhau", style: .cancel, handler: { (_) in
                    print("Okey")
                }))
                present(aler, animated: true)
            }
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
