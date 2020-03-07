//
//  ViewController.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namelbl: UITextField!
    
    @IBOutlet weak var paswwordlbl: UITextField!
    @IBOutlet weak var SIGNUPbtn: UINavigationItem!
    
    @IBOutlet weak var switchbtn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       readPlistData()
    
        for i in 1...5 {
            let c = Clist(cname: "evneet\(i)", cpassword: "evneet\(i)")
            Clist.list.append(c)
        }
        
        
        
    }

    @IBAction func logIn(_ sender: UIBarButtonItem) {
        
        
       let name = namelbl.text
       let password = paswwordlbl.text
        
        if (name!.isEmpty && password!.isEmpty) {
            let alert = UIAlertController(title: "Empty Fields", message: "Please Fill The Required Information", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }else{
            
            
        }
        
    }
    
}

    func readPlistData ()
    {
     if let bundlepath =   Bundle.main.path(forResource: "customers", ofType: "plist")
        {
          
         if   let dictionary = NSMutableDictionary(contentsOfFile: bundlepath)
         {
           
            if let customersList = dictionary["customers"] as? [[String:String]]
            {
                var flag = false
                for user in customersList
                {
                    if user ["username"] == "Evneet" && user ["password"] == "Evneet@123"
                    
                   /*    ||
                    user ["username1"] == "Gagan" && user ["password1"] == "Gagan@123"
                    
                    ||
                            user ["username2"] == "charmi" && user ["password2"] == "charmi@123"
                    
                    ||
                     user ["username3"] == "avani" && user ["password3"] == "avani@123"
                        ||
                    
                      user ["username4"] == "kulvir" && user ["password4"] == "kulvir@123"*/
                        
                    {
                        flag = true
                    }
                }
                if flag == true {
                   print("Valid User")
                }
                        else {
                            print("Invalid  User")
                        }
                    }
                }
            }
    }




