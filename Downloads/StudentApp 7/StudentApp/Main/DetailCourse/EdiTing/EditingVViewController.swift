//
//  EditingVViewController.swift
//  StudentApp
//
//  Created by Apple on 8/6/21.
//

import UIKit

class EditingVViewController: UIViewController {

    @IBOutlet weak var EditImageView: UIImageView!
    @IBOutlet weak var EditTitle: UILabel!
    @IBOutlet weak var EditDescription: UILabel!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func EditingVC(_ sender: Any) {
        let Save = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SaveViewController") as! SaveViewController
        Save.SaveTitleName.text = EditTitle.text!
        Save.SaveConten.text = EditDescription.text!
        
        self.navigationController?.pushViewController(Save,  animated: true)
    }
    
 

}
