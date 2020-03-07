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

}
