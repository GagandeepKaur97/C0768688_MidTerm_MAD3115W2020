//
//  Internet.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeep kaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill
{
    var providerName  : String
    var internetGbUsed    : Int
    
        init(billId: Int, billDate: String, billType: String , providerName : String , internetGbUsed: Int)
    {
        self.providerName = providerName
        self.internetGbUsed = internetGbUsed
          //self.totalBillAmount = totalBillAmount
        super.init (billId , billDate, billType)
        self.totalBillAmount = calculateTotalBill()
    
       
    
        func calculateTotalBill() -> Double
        {
        self.totalBillAmount = Double(internetGbUsed) * 0.20
            return totalBillAmount        }
    }

}
