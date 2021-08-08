//
//  CellHomeCollectionViewCell.swift
//  StudentApp
//
//  Created by Apple on 7/26/21.
//

import UIKit

protocol CellHomeCollectionViewCellDelegate {
    func CellDelegate(_ vc: UIViewController)
}

class CellHomeCollectionViewCell: UICollectionViewCell {
    
     var delegate: CellHomeCollectionViewCellDelegate?
    static let indefitier = "CellHomeCollectionViewCell"
    let homeUIview: UIView = {
        let home = UIView()
        home.translatesAutoresizingMaskIntoConstraints = false
        return home
    }()
    let imageUIImageview:UIImageView = {
        let img  = UIImageView()
        img.contentMode = .scaleToFill
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    let desLable: UILabel = {
        let des = UILabel()
        des.numberOfLines = 2
        des.font = UIFont.boldSystemFont(ofSize: 28)
        des.translatesAutoresizingMaskIntoConstraints = false
        return des
    }()
    let cartUIstackView: UIStackView = {
        let des = UIStackView()
        des.axis = .horizontal
        des.backgroundColor = .cyan
        des.backgroundColor = UIColor(white: 0.7, alpha: 0.7)
        des.distribution = .fillEqually
        des.translatesAutoresizingMaskIntoConstraints = false
        return des
    }()
    let leftUIview: UIView = {
        let home = UIView()
        home.translatesAutoresizingMaskIntoConstraints = false
        return home
    }()
    let rightUIview: UIView = {
        let home = UIView()
        home.translatesAutoresizingMaskIntoConstraints = false
        return home
    }()
    
    let priceLable: UILabel = {
        let des = UILabel()
        des.textColor = .white
        des.font = UIFont.boldSystemFont(ofSize: 25)
        des.translatesAutoresizingMaskIntoConstraints = false
        return des
    }()
    let sellPriceLable: UILabel = {
        let des = UILabel()
        des.textColor = .white
        des.font = UIFont.boldSystemFont(ofSize: 25)
        des.translatesAutoresizingMaskIntoConstraints = false
        return des
    }()
    
    let CartLable: UILabel = {
        let des = UILabel()
        des.textColor = .white
        des.backgroundColor = .yellow
        des.textAlignment = .center
        des.font = UIFont.boldSystemFont(ofSize: 25)
        des.translatesAutoresizingMaskIntoConstraints = false
        return des
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //self.backgroundColor = .red
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    @objc func imageTapped(){
//        let detailVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailCourseViewController") as! DetailCourseViewController
//
//        print(#function)
//    }
    
    
    
    func setup()  {
        self.addSubview(homeUIview)
        homeUIview.addSubview(imageUIImageview)
        imageUIImageview.addSubview(desLable)
        imageUIImageview.addSubview(cartUIstackView)
        cartUIstackView.addArrangedSubview(leftUIview)
        cartUIstackView.addArrangedSubview(rightUIview)
        leftUIview.addSubview(priceLable)
        leftUIview.addSubview(sellPriceLable)
        rightUIview.addSubview(CartLable)
        
       // let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        imageUIImageview.isUserInteractionEnabled = true
        //imageUIImageview.addGestureRecognizer(tapGestureRecognizer)
        
        NSLayoutConstraint.activate([
        
            homeUIview.topAnchor.constraint(equalTo: self.topAnchor),
            homeUIview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            homeUIview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            homeUIview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
        
            imageUIImageview.topAnchor.constraint(equalTo: homeUIview.topAnchor),
            imageUIImageview.leadingAnchor.constraint(equalTo: homeUIview.leadingAnchor),
            imageUIImageview.trailingAnchor.constraint(equalTo: homeUIview.trailingAnchor),
            imageUIImageview.bottomAnchor.constraint(equalTo: homeUIview.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            desLable.leadingAnchor.constraint(equalTo: imageUIImageview.leadingAnchor, constant: 20),
            desLable.trailingAnchor.constraint(equalTo: imageUIImageview.trailingAnchor, constant: -20),
            desLable.bottomAnchor.constraint(equalTo: cartUIstackView.topAnchor, constant: -30)
        ])
        
       
        NSLayoutConstraint.activate([
        
            cartUIstackView.heightAnchor.constraint(equalToConstant: 100),
            cartUIstackView.leadingAnchor.constraint(equalTo: imageUIImageview.leadingAnchor),
            cartUIstackView.trailingAnchor.constraint(equalTo: imageUIImageview.trailingAnchor),
            cartUIstackView.bottomAnchor.constraint(equalTo: imageUIImageview.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
        
            priceLable.topAnchor.constraint(equalTo: leftUIview.topAnchor, constant: 20),
            priceLable.leadingAnchor.constraint(equalTo: leftUIview.leadingAnchor, constant: 20)
           
        ])
        NSLayoutConstraint.activate([
            sellPriceLable.leadingAnchor.constraint(equalTo: leftUIview.leadingAnchor, constant: 20),
            sellPriceLable.topAnchor.constraint(equalTo: priceLable.bottomAnchor, constant: 5)
        ])
        NSLayoutConstraint.activate([
        
            CartLable.centerYAnchor.constraint(equalTo: rightUIview.centerYAnchor),
            CartLable.trailingAnchor.constraint(equalTo: rightUIview.trailingAnchor, constant: -20),
            CartLable.widthAnchor.constraint(equalToConstant: 100),
            CartLable.heightAnchor.constraint(equalToConstant: 50)
        ])
        CartLable.layer.cornerRadius = 20
        CartLable.clipsToBounds = true
       
    }
}
