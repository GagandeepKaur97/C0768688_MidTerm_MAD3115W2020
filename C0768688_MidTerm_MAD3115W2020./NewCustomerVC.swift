//
//  NewCustomerVC.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerVC: UIViewController {
    
    
    @IBOutlet weak var idtxt       : UITextField!
    @IBOutlet weak var firstNametxt: UITextField!
    @IBOutlet weak var lastNametxt : UITextField!
    @IBOutlet weak var emailtxt    : UITextField!
    var customerDelegate           : CustomerTableViewController?
    
    var index = -1
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
       
    }
    
    
    @IBAction func addCustomer(_ sender: UIButton) {
        
        let id        = idtxt.text
        let firstName = firstNametxt.text
        let lastName  = lastNametxt.text
        let email     = emailtxt.text
        
        if id!.isEmpty || firstName!.isEmpty || lastName!.isEmpty || email!.isEmpty{
            
            let alert = UIAlertController(title: "empty", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        singletonData.getInstance().addCustomer(customer: Customer(customerId: id!, firstName: firstName!, lastName: lastName!, emailId: email!))
        
        idtxt.text        = ""
        firstNametxt.text = ""
        lastNametxt.text  = ""
        emailtxt.text     = ""
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
