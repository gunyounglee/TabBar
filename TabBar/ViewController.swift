//
//  ViewController.swift
//  TabBar
//
//  Created by TJ on 2022/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnGoImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    
    
    }
    
    @IBAction func btnGoDatePicker(_ sender: UIButton) {
    
        tabBarController?.selectedIndex = 1
    
    
    }
}//ViewController

