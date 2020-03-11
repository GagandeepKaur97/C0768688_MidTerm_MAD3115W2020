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
    
    @IBOutlet weak var billTypeSegLbl: UISegmentedControl!
    @IBOutlet weak var datePickerLbl: UIDatePicker!
    
    @IBOutlet weak var txtFeild1: UITextField!
    @IBOutlet weak var txtFeild2: UITextField!
    @IBOutlet weak var txtFeild3: UITextField!
    @IBOutlet weak var txtFeild4: UITextField!
    @IBOutlet weak var txtFeild5: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        datePickerLbl.isHidden = true
        billTypeSegLbl.isHidden = true
        txtFeild1.isHidden = true
        txtFeild2.isHidden = true
        txtFeild3.isHidden = true
        txtFeild4.isHidden = true
        txtFeild5.isHidden = true
        
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
    
    
    @IBAction func billTypeAction(_ sender: Any) {
        
        switch billTypeSegLbl.selectedSegmentIndex {
        case 0:
            billTypeTxtFld.text = "Hydro"
            txtFeild1.placeholder = "agency name"
            txtFeild2.placeholder = "units consumed"
            txtFeild1.isHidden = false
            txtFeild2.isHidden = false
            
            txtFeild3.isHidden = true
            txtFeild4.isHidden = true
            txtFeild5.isHidden = true
        case 1:
            billTypeTxtFld.text = "Mobile"
            txtFeild1.placeholder = "provider name"
            txtFeild2.placeholder = "GB used"
            txtFeild1.isHidden = false
            txtFeild2.isHidden = false
            
            txtFeild3.isHidden = true
            txtFeild4.isHidden = true
            txtFeild5.isHidden = true
            
        case 2:
            billTypeTxtFld.text = "Internet"
            
            txtFeild1.placeholder = "manufacturer name"
            txtFeild2.placeholder = "plan name"
            txtFeild3.placeholder = "mobile number"
            txtFeild4.placeholder = "GB used"
            txtFeild5.placeholder = "minutes used"
            
            txtFeild1.isHidden = false
            txtFeild2.isHidden = false
            txtFeild3.isHidden = false
            txtFeild4.isHidden = false
            txtFeild5.isHidden = false
            
            
            
        default:
            break
        }
    }
    

    
    
    @IBAction func dateTxtFldAction(_ sender: Any) {
          datePickerLbl.isHidden = false
    }
    @IBAction func editend(_ sender: Any) {
        datePickerLbl.isHidden = true
    }
    
    
    
    @IBAction func billTypeTouchDown(_ sender: Any) {
        billTypeSegLbl.isHidden = false
    }
    @IBAction func billtypeEditEnd(_ sender: Any) {
        billTypeSegLbl.isHidden = true
    }
    
}
