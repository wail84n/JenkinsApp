//
//  ViewController.swift
//  JenkinsApp
//
//  Created by wael almohammad on 17/12/2022.
//

import UIKit

class ViewController: UIViewController {

    private let lockQueue = DispatchQueue(label: "name.lock.queue")
    lazy var userName: String = "Wael"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        #if DEVELOPMENT
        print("I am in Developmentvddcd.+++cdscddsfdssddcsdcsd")
        #elseif DEBUG
        print("I am in Debugddsdsddddssdfsdsdsd +++ +++")
        #endif
        
        // Do any additional setup after loading the view.
        
        
        DispatchQueue.global().async {
            self.lockQueue.async {
                print(self.userName)
            }
        }
        
        lockQueue.async {
            print(self.userName)
        }
        
    }
    
    func waelWord(test: String)-> String{
        if test == "1"{
            return "Hello"
        }else{
            return "try Again"
        }
        

    }
}

extension String {
    func uppercasedFirst() -> String {
        let firstCharacter = prefix(1).capitalized
        let remainingCharacters = dropFirst().lowercased()
        return firstCharacter + remainingCharacters
    }
}

