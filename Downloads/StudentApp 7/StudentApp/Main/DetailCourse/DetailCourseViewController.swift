//
//  DetailCourseViewController.swift
//  StudentApp
//
//  Created by Apple on 7/27/21.
//

import UIKit

class DetailCourseViewController: UIViewController {

    @IBOutlet weak var CoverImage: UIImageView!
    @IBOutlet weak var DetailTitleLable: UILabel!
    @IBOutlet weak var DescriptionTitleLable: UILabel!
    @IBOutlet weak var TimeLable: UILabel!
    @IBOutlet weak var PlayLable: UILabel!
    @IBOutlet weak var RateStarLable: UILabel!
    @IBOutlet weak var CreatTimeLable: UILabel!
    @IBOutlet weak var ContentCourseLable: UILabel!
    @IBOutlet weak var ThumNailImage: UIImageView!
    @IBOutlet weak var NameLable: UILabel!
    @IBOutlet weak var StarLable: UILabel!
    @IBOutlet weak var ThumPlayLable: UILabel!
    @IBOutlet weak var PeopleLable: UILabel!
    @IBOutlet weak var ContenDetailLable: UILabel!
    
    private var reloadTableBarButtonItem: UIBarButtonItem!
    private var changeTypeOfTableBarButtonItem: UIBarButtonItem!
    
    var news: New?
    var indexPath: IndexPath?
    var detail:[Detail] = []
    
    var currentDetail: Detail?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.navigationController?.setNavigationBarHidden(false , animated: true)
        setUpNavigation()
        LoadData()
        //setupViews()
        sort()
        
        findCurrentNewsInArray()
    }
    
    func LoadData(){
        let path = Bundle.main.url(forResource: "Detail", withExtension: "json")!
        do {
            let data = try Data(contentsOf: path)
            let json = try JSONDecoder.init().decode([Detail].self, from: data)
            detail = json
            print(detail)
        } catch {
            print(error)
        }
    }
    
    //
    
    func findCurrentNewsInArray() {
        for d in detail {
            if d.Id == news?.Id {
                currentDetail = d
                break
            }
        }
        
        reloadUI()
    }
    
    func reloadUI() {
      
        let url = URL(string: currentDetail!.ThumNail as! String)
        do {
            let data = try Data(contentsOf: url!)
            ThumNailImage.image = UIImage(data: data)
        } catch  {
            print(error)
        }
        let urll = URL(string: currentDetail!.Cover as! String)
        do {
            let data = try Data(contentsOf: urll!)
            ThumNailImage.image = UIImage(data: data)
        } catch  {
            print(error)
        }
        
        DetailTitleLable.text = currentDetail?.Title
        DescriptionTitleLable.text = currentDetail?.DescriptionTitle
        TimeLable.text = currentDetail?.CreatTime
        PlayLable.text = String(currentDetail!.Play)
        RateStarLable.text = String(currentDetail!.RateStar)
        CreatTimeLable.text = currentDetail?.CreatTime
        ContentCourseLable.text = currentDetail?.ContentCourse
//        ThumNailImage.image = UIImage(named: currentDetail!.ThumNail)
        NameLable.text = currentDetail?.Name
        StarLable.text = String(currentDetail!.Star)
        ThumPlayLable.text = String(currentDetail!.ThumPlay)
        PeopleLable.text = String(currentDetail!.People)
        ContenDetailLable.text = currentDetail?.ContenDetail
        
    }
    
    //
    
//    func setupViews() {
//        DetailTitleLable.text = news?.Title
//        DescriptionTitleLable.text = currentDetail?.DescriptionTitle
//
//    }
    
    func sort(){
        self.detail = self.detail.sorted(by: { $0.Id < $1.Id})
    }
    
    
    func setUpNavigation(){
        reloadTableBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.clockwise"), landscapeImagePhone: nil, style: .plain, target: self, action: #selector(reloadTable))
        
        
        changeTypeOfTableBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "arrow.2.squarepath"), landscapeImagePhone: nil, style: .plain, target: self, action: #selector(changeTypeOfTable))
        
        navigationItem.rightBarButtonItem = reloadTableBarButtonItem
//        navigationItem.leftBarButtonItem = changeTypeOfTableBarButtonItem
        
    }
    
    @objc func reloadTable(){
        print(#function)
    }
    
    @objc func changeTypeOfTable(){
       // let edit = EditingVViewController()
        let VC = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EditingVViewController") as! EditingVViewController
        self.navigationController?.pushViewController(VC, animated: true)
        
    }

}
