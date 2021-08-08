//
//  ViewController.swift
//  StudentApp
//
//  Created by Apple on 7/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    let controllerUIview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let backgroudImage: UIImageView = {
        let ima = UIImageView()
        ima.contentMode = .scaleToFill
        ima.isUserInteractionEnabled = true
        ima.image = UIImage(named: "1862992")
        ima.translatesAutoresizingMaskIntoConstraints = false
        return ima
    }()
    
    let wecomeUILable: UILabel = {
        let lbl = UILabel()
        lbl.text = "Wecome to"
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.textColor = .white
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let studentUILable: UILabel = {
        let lbl = UILabel()
        lbl.text = "STUDENT IOS"
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        lbl.textColor = .white
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let getStartUIButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("GET START", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.addTarget(self, action: #selector(pushLogin), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    @objc func pushLogin(){
        
        let LoginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(LoginVC, animated: true)
        
//       let Login = LoginViewController()
//        self.navigationController?.pushViewController(Login, animated: true)
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       // self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.navigationController?.isNavigationBarHidden = true
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(controllerUIview)
        controllerUIview.addSubview(backgroudImage)
        backgroudImage.addSubview(wecomeUILable)
        backgroudImage.addSubview(studentUILable)
        backgroudImage.addSubview(getStartUIButton)
        
        getStartUIButton.layer.cornerRadius = 15
        getStartUIButton.layer.masksToBounds = false
        NSLayoutConstraint.activate([
            controllerUIview.topAnchor.constraint(equalTo: view.topAnchor),
            controllerUIview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            controllerUIview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            controllerUIview.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
        NSLayoutConstraint.activate([
            backgroudImage.topAnchor.constraint(equalTo: controllerUIview.topAnchor),
            backgroudImage.bottomAnchor.constraint(equalTo: controllerUIview.bottomAnchor),
            backgroudImage.leadingAnchor.constraint(equalTo: controllerUIview.leadingAnchor),
            backgroudImage.trailingAnchor.constraint(equalTo: controllerUIview.trailingAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
          
            wecomeUILable.bottomAnchor.constraint(equalTo: studentUILable.topAnchor, constant: -5),
            wecomeUILable.leadingAnchor.constraint(equalTo: backgroudImage.leadingAnchor, constant: 30)
            
            
        ])
        
        NSLayoutConstraint.activate([
            studentUILable.bottomAnchor.constraint(equalTo: getStartUIButton.topAnchor, constant: -30),
            studentUILable.leadingAnchor.constraint(equalTo: backgroudImage.leadingAnchor, constant: 30)
       
        ])
        
        NSLayoutConstraint.activate([
//            getStartUIButton.topAnchor.constraint(equalTo: backgroudImage.topAnchor, constant: 700),
            getStartUIButton.heightAnchor.constraint(equalToConstant: 60),
            getStartUIButton.bottomAnchor.constraint(equalTo: backgroudImage.bottomAnchor, constant: -50),
            getStartUIButton.leadingAnchor.constraint(equalTo: backgroudImage.leadingAnchor, constant: 30),
            getStartUIButton.trailingAnchor.constraint(equalTo: backgroudImage.trailingAnchor, constant: -30)
            
        ])
        
    
    }


}

