//
//  ViewController.swift
//  ss
//
//  Created by Said Pelaez Tellitud on 03/01/16.
//  Copyright © 2016 eulr. All rights reserved.
//

import Alamofire
import UIKit
import SwiftyJSON


class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var alert: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(sender: AnyObject) {
        var comp =  "Tus datos fueron: email: "
        comp += email.text!
        comp += "\n password: "
        comp += password.text!
//        SS_handler.new_user(username: "Pepe", pw: "contrasena")
        let ss = SS_handler()
        let result = JSON(ss.new_user("Pepe", pw: "contrasena"))
        print(result)
        
    }

}

