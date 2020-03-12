//
//  CustomerBillDetailsVC.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class CustomerBillDetailsVC: UIViewController {
    
    
    @IBOutlet weak var billDetailsTxtView: UITextView!
    
    var delegateCTBV: CustomerTableViewController?
    var selectcustomer : Customer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let des = segue.destination as? AddBillVC{
            des.delegCBD = self
        }
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//       billDetailsTxtView.text = "\(selectcustomer?.Display())"
//    }
    
    

}
