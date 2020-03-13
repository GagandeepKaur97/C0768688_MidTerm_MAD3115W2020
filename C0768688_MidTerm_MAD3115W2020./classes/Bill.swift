//
//  Bill.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeep kaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation



class Bill  :  CalculateBill
{
    var billId          : Int
    var billDate        : String
    var billType        : String
    var totalBillAmount : Double = 0.0
    
    init (_ billId : Int, _ billDate : String , _ billType : String)
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    
    }
    func calculateTotalBill() -> Double {
        return 0.0
}
}

