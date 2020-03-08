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
    
    
    @IBOutlet weak var switchbtn: UISwitch!
    
    var validUser = false
    
    var clist = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      readPlistData()
        
        clist = ["evneet": "evneet@123","gagan": "gagan@123","kulvir": "kulvir@123"]
    
      
        }
    
    
    
    @IBAction func signIn(_ sender: UIButton) {
        
        let name = namelbl.text
               let password1 = paswwordlbl.text
              
               for (user,password) in clist {
                   
                   if name == user && password1 == password{
                       validUser = true
                       break
                       
                   }
               }
               
               if !validUser {
                 showAlert()
               }else{
                performSegue(withIdentifier: "customerList", sender: self)
        }
        }
           
    

func showAlert(){
       let alert = UIAlertController(title: "INVALID", message: "PLEASE ENTER THE VALID USERNAME AND PASSWORD", preferredStyle: .alert)
       let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
       
       alert.addAction(ok)
       self.present(alert, animated: true, completion: nil)
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
                    if user ["username"] == "evneet" && user ["password"] == "evneet@123"
                    
                      ||
                    user ["username1"] == "gagan" && user ["password1"] == "gagan@123"
                    
        
                        ||
                    
                      user ["username4"] == "kulvir" && user ["password4"] == "kulvir@123"
                        
                    {
                        flag = true
                    }
                }
                if flag == true {
                   print("Valid User")
                }
                        else {
                            print("Invalid  User")
                    let alert = UIAlertController(title: "hgdg", message: ";hd", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
                    
                    alert.addAction(ok)
                    self.present(alert, animated: true, completion: nil)
                        }
                    }
                }
            }
   }
    
    @IBAction func unwindToVC(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
}





