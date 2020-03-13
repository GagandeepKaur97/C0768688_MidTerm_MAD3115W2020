//
//  Customer.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer : CalculateBill{
    
    
enum CustomerNotFound {
    case EmailIdInvailid , MobileNumberInvalid
}

    var customerId : String
    var firstName  : String
    var lastName   : String
    var fullName   : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailId         : String
    var totalAmountToPay: Double = 0
    var billsDictionary = [String: [Bill]]()
    var bills           = [Bill]()
    
   public static var customerDetails = [Customer]()
    
    init(customerId : String ,firstName  : String,lastName   : String   ,emailId    : String)
        
      {
        self.customerId       = customerId
        self.firstName        = firstName
        self.lastName         = lastName
        
        if emailId.Emailvalidation() == true
        {
                self.emailId = emailId
        }
        else
        {
            self.emailId = "Invalid email id \(emailId)"
        }
        
    }
    
   func addBill(bill: Bill){
      bills.append(bill)
    billsDictionary.updateValue(bills, forKey: customerId)

  }
    
    func calculateTotalBill()-> Double
    {
       
    
   
        for item in bills {
            totalAmountToPay = totalAmountToPay + Double(item.totalBillAmount)
        }
        return totalAmountToPay
    }
    
    func getAllbills() -> [Bill]
       {
           return bills
           
       }
//   func Display()-> String
//    {
//        
//        var s = "CustomerId        :\(self.customerId  )\n"
//        s += "FullName          :\(self.fullName   )\n"
//        s += "EmailId           :\(String(describing: self.emailId)   )\n"
//        s += " _________Bill Information_______ \n"
//        s += "*************************************************** \n"
//        
//        print("CustomerId        :\(self.customerId  )")
//        print("FullName          :\(self.fullName   )")
//        print("EmailId           :\(String(describing: self.emailId)   )")
//        
//        print(" _________Bill Information_______")
//        print("***************************************************")
//     for i in billsDictionary {
//
//   // i.value.Display()
//      }
//        for item in bills {
//            
//            s += item.Display() + "\n"
//            item.Display()
//        }
//        s += "   totalAmountToPay  :  \n"
//        
//       print("   totalAmountToPay  :  ")
//        
//        if billsDictionary.count == 0
//        {
//            s += "       Customer has no bill \n"
//            s += "*************************************************** \n"
//            print("       Customer has no bill")
//            print("***************************************************")
//            
//        }
//        else
//        {
//            s += "       Total Bill Amount to pay :\(calculateTotalBill())\n"
//            s += "*************************************************** \n"
//            print("       Total Bill Amount to pay :\(calculateTotalBill())" )
//            print("***************************************************")
//        }
//        
//        return s
//    }
//    
//   func findBill(for id :Int){
//       var billid : Int
//       var exixt = false
//
//        for item in bills {
//          billid = item.billId
//            if billid == id{
//                print("***************************************************")
//                print("--------------------Bill Details-------------------")
//               item.Display()
//               print("***************************************************")
//                exixt = true
//               break
//          }
//        }
//
//        if !exixt{
//          print("***************************************************")
//           print("         No bill found with given index...........")
//            print("***************************************************")
//       }
//    }
   
   
}

