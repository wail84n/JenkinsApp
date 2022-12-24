//
//  ViewController.swift
//  JenkinsApp
//
//  Created by wael almohammad on 17/12/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEVELOPMENT
        print("I am in Development")
        #elseif DEBUG
        print("I am in Debug")
        #endif
        
        // Do any additional setup after loading the view.
    }
}


