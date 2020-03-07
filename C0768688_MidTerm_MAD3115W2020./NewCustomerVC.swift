//
//  NewCustomerVC.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class NewCustomerVC: UIViewController {
    
    
    @IBOutlet weak var idtxt: UITextField!
    @IBOutlet weak var fistNametxt: UITextField!
    @IBOutlet weak var lastNametxt: UITextField!
    @IBOutlet weak var emailtxt: UITextField!
    var customerDelegate: CustomerTableViewController?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
    }
    
    
    @IBAction func addCustomer(_ sender: UIButton) {
        
        let id = idtxt.text
        let fistName = fistNametxt.text
        let lastName = lastNametxt.text
        let email = emailtxt.text
        
        if id!.isEmpty && fistName!.isEmpty && lastName!.isEmpty && email!.isEmpty{
            
            let alert = UIAlertController(title: "empty", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        let c = Customer(customerId: Int(id!) ?? 0, firstName: fistName!, lastName: lastName!, emailId: email!)
        
        Customer.customerDetails.append(c)
        
        idtxt.text = ""
        fistNametxt.text = ""
        lastNametxt.text = ""
        emailtxt.text = ""
        
        
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
