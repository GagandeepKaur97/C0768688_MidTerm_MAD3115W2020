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
          //  print(bundlepath)
         if   let dictionary = NSMutableDictionary(contentsOfFile: bundlepath)
         {
           
            if let userList = dictionary["users"] as? [[String:String]]
            {
                var flag = false
                for user in userList
                {
                    if user ["username"] == "Evneet" && user ["password"] == "Evneet@123"
                    
                        ||
                    user ["username"] == "Gagan" && user ["password"] == "Gagan@123"
                    
                    ||
                            user ["username"] == "charmi" && user ["password"] == "charmi@123"
                    
                    ||
                     user ["username"] == "avani" && user ["password"] == "avani@123"
                        ||
                    
                      user ["username"] == "kulvir" && user ["password"] == "kulvir@123"
                        
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




