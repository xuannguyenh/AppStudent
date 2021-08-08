//
//  SaveViewController.swift
//  StudentApp
//
//  Created by Apple on 8/6/21.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet weak var SaveImage: UIImageView!
    @IBOutlet weak var SaveConten: UITextView!
    @IBOutlet weak var SaveTitleName: UITextField!
    
    var course =  String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SaveVC(_ sender: Any) {
        SaveTitleName.text = course
        SaveConten.text = course
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
