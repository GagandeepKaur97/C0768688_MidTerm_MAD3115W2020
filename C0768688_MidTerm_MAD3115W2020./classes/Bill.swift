//
//  Bill.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeep kaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Bill     :   IDisplay{
    
    
    var billId          : Int
    var billDate        : Date
    var billType        : String
    var totalBillAmount : Double
    var date :String
    
    init (_ billId : Int, _ billDate : Date , _ billType : String ){
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = 0
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, MMM,dd"
        let hourformatter = DateFormatter()
        hourformatter.dateFormat = "hh:mm a"
        date = formatter.string(from: billDate) + "  " + hourformatter.string(from: billDate)
    }
    
    
    func Display() {
         print("\t BillId                    : \(self.billId)")
         print("\t BillDate                  : \(self.date)")
         print("\t BillType                  : \(self.billType)")
         print("\t TotalBillAmount           : $\(self.totalBillAmount)")
    }
    
}
