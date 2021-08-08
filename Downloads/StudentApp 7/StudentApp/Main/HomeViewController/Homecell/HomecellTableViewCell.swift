//
//  HomecellTableViewCell.swift
//  StudentApp
//
//  Created by Apple on 7/25/21.
//

import UIKit


class HomecellTableViewCell: UITableViewCell {
    
   static let inderfireder = "HomecellTableViewCell"
    
    var vc: HomeStudentViewController?
    var slideShow: SlideShow?
    
    let homeUIview: UIView = {
        let home = UIView()
        home.translatesAutoresizingMaskIntoConstraints = false
        home.backgroundColor = .white
        return home
    }()
    
    let collectiom: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let coll = UICollectionView(frame: .zero, collectionViewLayout: layout)
        coll.register(CellHomeCollectionViewCell.self, forCellWithReuseIdentifier: CellHomeCollectionViewCell.indefitier)
        coll.showsHorizontalScrollIndicator = false
        coll.translatesAutoresizingMaskIntoConstraints = false
        return coll
    }()
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
      
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setup()
    }
    func setup() {
       
        
        
        self.addSubview(homeUIview)
        homeUIview.addSubview(collectiom)
        collectiom.delegate = self
        collectiom.dataSource = self
        NSLayoutConstraint.activate([
            homeUIview.topAnchor.constraint(equalTo: self.topAnchor),
            homeUIview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            homeUIview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            homeUIview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            collectiom.topAnchor.constraint(equalTo: homeUIview.topAnchor),
            collectiom.leadingAnchor.constraint(equalTo: homeUIview.leadingAnchor),
            collectiom.trailingAnchor.constraint(equalTo: homeUIview.trailingAnchor),
            collectiom.bottomAnchor.constraint(equalTo: homeUIview.bottomAnchor)
        ])
    }
}


extension HomecellTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (slideShow?.news.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellHomeCollectionViewCell.indefitier, for: indexPath) as! CellHomeCollectionViewCell
       
        cell.delegate = self
       
        //cell.imageUIImageview.image = UIImage(named: "1862992")
        let urt = URL(string: (slideShow?.news[indexPath.item].Cover) as! String)
        do {
            let data = try Data(contentsOf: urt!)
            cell.imageUIImageview.image = UIImage(data: data)
        } catch  {
            print(error)
        }
        cell.CartLable.text = "Nhận"
        cell.desLable.text = slideShow?.news[indexPath.item].Title
        cell.priceLable.text = slideShow?.news[indexPath.item].Price
        cell.sellPriceLable.text = slideShow?.news[indexPath.item].SellPrice
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: self.frame.width  , height: self.frame.height   )
        return size
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.CellDelegate(vc!)
        
        let editing = slideShow?.news[indexPath.item]
        
 
        let detailVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailCourseViewController") as! DetailCourseViewController
        detailVC.news = editing
        vc?.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

extension HomecellTableViewCell:CellHomeCollectionViewCellDelegate{
    func CellDelegate(_ vc: UIViewController) {
        print(#function)
//        let detailVC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailCourseViewController") as! DetailCourseViewController
//        vc.navigationController?.pushViewController(detailVC, animated: true)
//
        
    }
    
    
}
