//
//  ScreenInit.swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 22/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import  UIKit

class ScreenInit:UIViewController{
    @IBOutlet var name: UITextField!
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        
    }
    @IBAction func nextScreen(_ sender: Any) {
        if name.text! != ""{
            self.defaults.set(name.text, forKey: "name")
            self.performSegue(withIdentifier: "chatView", sender: nil)

        }
    }
}
