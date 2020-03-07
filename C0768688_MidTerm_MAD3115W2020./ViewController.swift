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
        // Do any additional setup after loading the view.
        
        for i in 1...5 {
            let c = Clist(cname: "evneet\(i)", cpassword: "evneet\(i)")
            Clist.list.append(c)
        }
        
        
        
    }

    @IBAction func logIn(_ sender: UIBarButtonItem) {
        
        
        var name = namelbl.text
        var password = paswwordlbl.text
        
        if (name!.isEmpty && password!.isEmpty) {
            let alert = UIAlertController(title: "Empty Fields", message: "Please Fill The Required Information", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }else{
            
        }
        
    }
    
}

