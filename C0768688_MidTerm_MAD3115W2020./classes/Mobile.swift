//
//  Mobile.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeeep kaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill
{
    var mobileManufacturerName : String
    var planName               : String
    var mobileNumber           : String
    var internetGbUsed         : Double
    var minuteUsed             : Int
    
     init(billId: Int, billDate: String, billType:BillType,mobileManufacturerName: String , planName: String , mobileNumber : String , internetGbUsed :Double ,minuteUsed : Int )
        
    {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        
        

        self.mobileNumber = mobileNumber
        self.internetGbUsed = internetGbUsed
        self.minuteUsed = minuteUsed
      // self.totalBillAmount = totalBillAmount
        super.init(billId, billDate, billType )
        self.totalBillAmount = calculateTotalBill()
    }
    
        
override  func calculateTotalBill() -> Double
{
    self.totalBillAmount = Double(internetGbUsed) *  0.20 + Double(minuteUsed) * 0.10

    return totalBillAmount
    
}

}
