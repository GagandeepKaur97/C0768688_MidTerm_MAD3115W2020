//
//  CustomerList.swift
//  C0768688_MidTerm_MAD3115W2020.
//
//  Created by Evneet kaur on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Clist{
    
    var cname: String
       var cpassword: String
       
       
       
    init(cname: String, cpassword: String) {
        self.cname = cname
        self.cpassword = cpassword
    }
    
    public static var list = [Clist]()
    

    
}
