//
//  AddBillVC.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-11.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillVC : UIViewController, UITextFieldDelegate {

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
    
    
    var c : Customer?
    var h : Hydro?
    var i : Internet?
    var m : Mobile?
    
    
    
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
    
    @IBAction func addBill(_ sender: Any) {
    
        let id   = billIdTxtFld.text
        let date = billDateTxtFld.text
        let type = billTypeTxtFld.text
        
        switch billTypeSegLbl.selectedSegmentIndex
        {
        case 0:
            let agency = txtFeild1.text
            let unit = txtFeild2.text
            
           
            
            if agency!.isEmpty && unit!.isEmpty{
                
                showAlert(message: "Empty feilds")
                
            }
            else
            {
                 h = Hydro(billId: Int(id!)!, billDate: date!, billType: type!, agencyName: agency!, unitConsumed: Int(unit!)!)
                c?.addBill(bill: h!)
            }
        case 1:
            let provider = txtFeild1.text
            let gb = txtFeild2.text
            
            if provider!.isEmpty && gb!.isEmpty{
                showAlert(message: "Empty feilds")
            }else{

                i = Internet(billId: Int(id!)!, billDate: date!, billType: type!, providerName: provider!, internetGbUsed: Int(gb!)!)
                c?.addBill(bill: i!)
            
            }
            
        case 2:
            let manufacturer = txtFeild1.text
            let plan = txtFeild2.text
            let mobile = txtFeild3.text
            let gbused = txtFeild4.text
            let minute = txtFeild5.text
            
            if manufacturer!.isEmpty && plan!.isEmpty && mobile!.isEmpty && gbused!.isEmpty && minute!.isEmpty{
                showAlert(message: "Empty feilds")
            }else{
                
                if txtFeild3.text?.mobilevalidation() == false{
                    showAlert(message: "Invalid mobile number")
                }
                else
                {
                    
                    m = Mobile(billId: Int(id!)!, billDate: date!, billType: type!, mobileManufacturerName: manufacturer!, planName: plan!, mobileNumber: mobile!, internetGbUsed: Int(gbused!)!, minuteUsed: Int(minute!)!)
                                   c?.addBill(bill: m!)
                           
                     
               
            }
            
         
        
        }
        default:
            break
        }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
             let AddBillVC = sb.instantiateViewController(identifier: "AddBillVC") as AddBillVC
              AddBillVC.c = self.c
             navigationController?.pushViewController(AddBillVC, animated: true)
  
        
    }
    
    
    
    
    
    
    
    
    
    
    @IBAction func datepicker(_ sender: Any) {
        
      
        
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
            
//            h = Hydro(billId: Int(billIdTxtFld.text!)!, billDate: billDateTxtFld.text!, billType: billTypeTxtFld.text!, agencyName: txtFeild1.text!, unitConsumed: Int(txtFeild2.text!)!)
            
            txtFeild3.isHidden = true
            txtFeild4.isHidden = true
            txtFeild5.isHidden = true
        case 1:
            billTypeTxtFld.text = "Internet"
            txtFeild1.placeholder = "provider name"
            txtFeild2.placeholder = "GB used"
            txtFeild1.isHidden = false
            txtFeild2.isHidden = false
            
//            i = Internet(billId: Int(billIdTxtFld.text!)!, billDate: billDateTxtFld.text!, billType: billTypeTxtFld.text!, providerName: txtFeild1.text!, internetGbUsed: Int(txtFeild2.text!)!)
            
            
            
           
            
            txtFeild3.isHidden = true
            txtFeild4.isHidden = true
            txtFeild5.isHidden = true
            
        case 2:
            billTypeTxtFld.text = "Mobile"
            
            txtFeild1.placeholder = "manufacturer name"
            txtFeild2.placeholder = "plan name"
            txtFeild3.placeholder = "mobile number"
            txtFeild4.placeholder = "GB used"
            txtFeild5.placeholder = "minutes used"
            
//            m = Mobile(billId: Int(billIdTxtFld.text!)!, billDate: billDateTxtFld.text!, billType: billTypeTxtFld.text!, mobileManufacturerName: txtFeild1.text!, planName: txtFeild2.text!, mobileNumber: txtFeild3.text!, internetGbUsed: Int(txtFeild4.text!)!, minuteUsed: Int(txtFeild5.text!)!)
            
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
    
    func showAlert(message: String){
     
        let alert = UIAlertController(title: message, message: "PLEASE ENTER THE VALID TEXT ", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .cancel, handler: nil)
        
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//
//    }
//
   
    
}
