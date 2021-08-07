//
//  Bill.swift
//  HW4
//
//  Created by Влад Бокин on 07.08.2021.
//

import Foundation

class Bill {
    var nameClient: String
    var countPersons: Int
    var numberOfTable: Int
    
    init(client nameClient: String, countPersons: Int, table numberOfTable: Int) {
            self.nameClient = nameClient
            self.countPersons = countPersons
            self.numberOfTable = numberOfTable
        }
}
