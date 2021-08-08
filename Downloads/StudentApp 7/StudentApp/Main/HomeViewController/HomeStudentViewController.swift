//
//  HomeStudentViewController.swift
//  StudentApp
//
//  Created by Apple on 7/24/21.
//

import UIKit

class HomeStudentViewController: UIViewController {
    
    private let header = DataHeader.share.header
    var slideShows: [SlideShow] = []
    let homeTableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(HomecellTableViewCell.self, forCellReuseIdentifier: HomecellTableViewCell.inderfireder)
        table.backgroundColor = .red
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.url(forResource: "DataStudent", withExtension: "json")
        do {
            let data =  try Data(contentsOf: path!)
            let json = try JSONDecoder.init().decode(AppStudent.self, from: data)
            slideShows = json.SlideShow
        } catch  {
            print("error \(error)")
        }
       setuoLayout()
    }
    
    
    func setupNavigation() {
        
    }
    
    func setuoLayout(){
        view.addSubview(homeTableView)
        homeTableView.delegate = self
        homeTableView.dataSource = self
        NSLayoutConstraint.activate([
            homeTableView.topAnchor.constraint(equalTo: view.topAnchor),
            homeTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}


extension HomeStudentViewController: UITableViewDelegate, UITableViewDataSource{
    // header section
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return slideShows.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerview = StudentHeaderView()
        headerview.frame = CGRect(x: 0, y: 0, width: self.homeTableView.frame.width, height: 50)
        headerview.lbll.text = slideShows[section].TitleHeader
        headerview.lbll2.text = slideShows[section].DescriptionHeader
        return headerview
    }
    
    // row
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomecellTableViewCell.inderfireder, for: indexPath) as! HomecellTableViewCell
        cell.vc = self
        //cell.slideShowa = [slideShows[indexPath.row]]
        cell.slideShow = slideShows[indexPath.section]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 550
    }
    
}
