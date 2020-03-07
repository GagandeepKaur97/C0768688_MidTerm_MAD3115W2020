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
      return Array(customers.values)
    }
    func loadData()
    {
        customers.updateValue(Customer(customerId: "C1", firstName: "Evneet", lastName: "kaur", emailId: "evneet123@gmail.com"), forKey: "C1")
        customers.updateValue(Customer(customerId: "C2", firstName: "Gagan", lastName: "kaur", emailId: "gagan123@mail.com"), forKey: "C2")
        customers.updateValue(Customer(customerId: "C3", firstName: "charmi", lastName: "patel", emailId: "charmi123@gmail.com"), forKey: "C3")
        customers.updateValue(Customer(customerId: "C4", firstName: "Avani", lastName: "patel", emailId: "avani123@gmail.com"), forKey: "C4")
        customers.updateValue(Customer(customerId: "C5", firstName: "kulvir", lastName: "kaur", emailId: "kulvir123@gmail.com"), forKey: "C5")

     }
}
