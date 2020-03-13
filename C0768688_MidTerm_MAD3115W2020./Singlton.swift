//
//  Singlton.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-07.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class singletonData
{
    private static let datasingleton_instance = singletonData()
    private lazy var customers: [String: Customer] = [:]
    private init(){}
    static func getInstance() -> singletonData
    {
      return datasingleton_instance
    }
     
    func addCustomer(customer: Customer)
    {
        self.customers.updateValue(customer, forKey: customer.customerId)
    }
    func getAllCustomers() -> [Customer]{
        loadData()
      return Array(customers.values)
    }

    
        
       var c1 = Customer(customerId: "C1", firstName: "Evneet", lastName: "kaur", emailId: "evneet123@gmail.com")
        
       var c2  = Customer(customerId: "C2", firstName: "Gagan", lastName: "kaur", emailId: "gagan123@mail.com")
        
      var c3 = Customer(customerId: "C3", firstName: "charmi", lastName: "patel", emailId: "charmi123@gmail.com")
        
       var c4  = Customer(customerId: "C4", firstName: "Avani", lastName: "patel", emailId: "avani123@gmail.com")
        
       var c5 = Customer(customerId: "C5", firstName: "kulvir", lastName: "kaur", emailId: "kulvir123@gmail.com")

   





var mob1 = Mobile(billId: 1, billDate: "Date", billType: "", mobileManufacturerName:"Samsung" , planName: "FiullTime", mobileNumber: "1234567890", internetGbUsed: Int(5.0), minuteUsed: 250)

var mob2 = Mobile(billId: 2, billDate: "Date", billType: " ", mobileManufacturerName:"sung" , planName: "FullTime talk", mobileNumber: "1234567768", internetGbUsed: Int(7.0), minuteUsed: 560)
var i1 = Internet(billId: 1, billDate: "", billType: "", providerName: "", internetGbUsed: Int(600.0))
var i2 = Internet(billId: 2, billDate: "", billType: "", providerName: "", internetGbUsed: Int(600.0))
var i3 = Internet(billId: 3, billDate: "", billType: "", providerName: "", internetGbUsed: Int(600.0))
var h1 = Hydro(billId: 1, billDate: "", billType: "", agencyName: "", unitConsumed: 60)
var h2 = Hydro(billId: 2, billDate: "", billType: "", agencyName: "", unitConsumed: 40)

    func loadData()
    {
        
        
        
        c1.addBill(bill: mob1)
        c1.addBill(bill: i1)
        c1.addBill(bill: h1)
        
        c2.addBill(bill: mob2)
        c2.addBill(bill: i2)
        
        c3.addBill(bill: h1)
        c3.addBill(bill: h2)
        
        c4.addBill(bill: i3)
        
       // c5.addBill(bill: h2, billID: h2.billID)
        
        customers.updateValue(c1, forKey: c1.customerId)
        customers.updateValue(c2, forKey: c2.customerId)
        customers.updateValue(c3, forKey: c3.customerId)
        customers.updateValue(c4, forKey: c4.customerId)
        customers.updateValue(c5, forKey: c5.customerId)
        

    }
    



}
