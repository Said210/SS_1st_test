//
//  SS_handler.swift
//  ss
//
//  Created by Said Pelaez Tellitud on 06/01/16.
//  Copyright © 2016 eulr. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class SS_handler {
    func new_user(username: String, pw: String) -> String{
        var result = ""
        Alamofire.request(.POST, "http://tugfa.mx/php/controller/user.php", parameters: ["action": "new_user", "username":username, "pw": pw]).responseJSON { response in
            print(response)  // original URL request
            //            print(response.response) // URL response
            //            print(response.data)     // server data
            print(response.result)   // result of response serialization
            print(response.result.value!)
            
            //        let JSON = response.result.value!
            //        self.alert.text = JSON as! String
            
            if (response.result.isSuccess){
                result = response.result.value! as! String
            }else{
                result =  "Error"
            }
            
        }
        return result
        
    }
}