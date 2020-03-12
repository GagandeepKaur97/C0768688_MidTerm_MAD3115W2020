//
//  Hydro.swift
//  MAD3004_W2020_MidTerm
//
//  Created by gagandeepkaur on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName   : String
    var unitConsumed : Int
    
    
    init(billId: Int, billDate: String, billType: String, agencyName : String , unitConsumed : Int)
    {
      self.agencyName = agencyName
       self.unitConsumed = unitConsumed
   //self.totalBillAmount = totalBillAmount
        super.init(billId, billDate, billType )
        self.totalBillAmount = Double(unitConsumed) * 0.30
    }
    override func Display() ->String
    {
        var s = super.Display() + "\n"
        s += " \t AgencyName                :\(self.agencyName)\n"
        s += " \t UnitConsumed              :\(self.unitConsumed ) units \n"
        s += "*************************************************** \n"
        
        
        print(" \t AgencyName                :\(self.agencyName)")
        print(" \t UnitConsumed              :\(self.unitConsumed ) units")
        print("***************************************************")
        return s
    }
}
