//
//  LoginViewController.swift
//  StudentApp
//
//  Created by Apple on 7/23/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginAction(_ sender: Any) {
//        func checkValidateEmail(_ email: String) -> Bool{
//            let regEx = "Xuannguyenhumg@gmail.com"
//            let checkEmail = NSPredicate(format: "SELF MATCHES %@", regEx)
//            return checkEmail.evaluate(with: email)
//        }
//        
//        func ckeckValidatePassword(_ pass: String) -> Bool{
//            let pass = "Nguyen1@"
//            let rexPass = NSPredicate(format: "SELF MATCHES %@", pass)
//            return rexPass.evaluate(with: pass)
//        }
//        
//        if let email = emailTextField.text, let pass = passTextField.text{
//            if !checkValidateEmail(email){
//                let alert = UIAlertController(title: "Email", message: "Email address not found", preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: { _ in
//                    print("okay")
//                }))
//                present(alert, animated: true)
//            }else if !ckeckValidatePassword(pass) && pass.count < 6{
//                let aler = UIAlertController(title: "PassWord", message: "pas address not found", preferredStyle: .alert)
//                aler.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: { (_) in
//                    print("Okey")
//                }))
//                present(aler, animated: true)
//            }
//        }
//        
        let tabdarDc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(tabdarDc, animated: true)
        
        
    }
    @IBAction func RegisterAction(_ sender: Any) {
        
        
        let registerVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    @IBAction func backViewController(_ sender: Any) {
        let tabbarDc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TabbarViewController") as! TabbarViewController
        self.navigationController?.pushViewController(tabbarDc, animated: true)
    }
}

extension LoginViewController{
//    func checkValidateEmail(_ email: String) -> Bool{
//        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let checkEmail = NSPredicate(format: "SELF MATCHES %@", regEx)
//        return checkEmail.evaluate(with: email)
//    }
//
//    func ckeckValidatePassword(_ pass: String) -> Bool{
//        let pass = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let rexPass = NSPredicate(format: "SELF MATCHES %@", pass)
//        return rexPass.evaluate(with: pass)
//    }
//
//    if let email = emailTextField.text, let pass = passTextField.text{
//        if !checkValidateEmail(email: email){
//            let alert = UIAlertController(title: "Email", message: "Email address not found", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
//                print("okay")
//            }))
//            present(alert, animated: true)
//        }else if !checkValidatePassWord(pass: pass) && pass.count < 6{
//            let aler = UIAlertController(title: "PassWord", message: "pas address not found", preferredStyle: .alert)
//            aler.addAction(UIAlertAction(title: "Định dạng mật khẩu không đúng", style: .cancel, handler: { (_) in
//                print("Okey")
//            }))
//            present(aler, animated: true)
//        }else if pass != rePass{
//            let aler = UIAlertController(title: "RePassWord", message: "pass address not found", preferredStyle: .alert)
//            aler.addAction(UIAlertAction(title: "Mật khẩu không trùng nhau", style: .cancel, handler: { (_) in
//                print("Okey")
//            }))
//            present(aler, animated: true)
//        }
//    }
}
