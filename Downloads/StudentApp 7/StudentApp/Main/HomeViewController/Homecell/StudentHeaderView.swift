//
//  StudentHeaderView.swift
//  StudentApp
//
//  Created by Apple on 7/26/21.
//

import UIKit

class StudentHeaderView: UIView {
    
    let lbll: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    let lbll2: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 13)
        lbl.numberOfLines = 2
        lbl.textColor = .black
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.backgroundColor = .darkGray
        setuo()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setuo()
       
       
    }
    
    
    private func setuo() {
        addSubview(lbll)
        addSubview(lbll2)
        NSLayoutConstraint.activate([
            lbll.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  20),
            lbll.topAnchor.constraint(equalTo: topAnchor, constant:  5)
        ])
        
        NSLayoutConstraint.activate([
            lbll2.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  20),
            lbll2.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -50),
            lbll2.topAnchor.constraint(equalTo: lbll.bottomAnchor, constant:  5),
            lbll2.bottomAnchor.constraint(equalTo: lbll2.bottomAnchor, constant:  -5)
        ])
    }
    
}
