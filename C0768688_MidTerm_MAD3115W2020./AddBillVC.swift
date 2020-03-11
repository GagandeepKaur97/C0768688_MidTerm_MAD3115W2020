//
//  AddBillVC.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillVC: UIViewController {

    @IBOutlet weak var billIdTxtFld: UITextField!
    @IBOutlet weak var billDateTxtFld: UITextField!
    @IBOutlet weak var billTypeTxtFld: UITextField!
    
    @IBOutlet weak var datePickerLbl: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        datePickerLbl.isHidden = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func datepicker(_ sender: Any) {
        
        print("inside date............................")
        
      
        
        let dateFormatter = DateFormatter()

        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let startDate = dateFormatter.string(from: datePickerLbl.date)
        billDateTxtFld.text = startDate
    }
    

    @IBAction func dateTxtFldAction(_ sender: Any) {
        
    
        
          datePickerLbl.isHidden = false
    }
    
    
    @IBAction func editend(_ sender: Any) {
        datePickerLbl.isHidden = true
    }
}
