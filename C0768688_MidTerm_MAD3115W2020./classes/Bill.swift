//
//  Bill.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeep kaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
enum BillType
{
    case INTERNET, MOBILE, HYDRO, INSURANCE
}


class Bill  :  CalculateBill
{
    var billId          : Int
    var billDate        : String
    var billType        : BillType
    var totalBillAmount : Double = 0.0
    
    init (_ billId : Int, _ billDate : String , _ billType : BillType)
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    
    }
    func calculateTotalBill() -> Double {
        return 0.0
}
}

