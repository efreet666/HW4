//
//  BillTableViewCell.swift
//  HW4
//
//  Created by Влад Бокин on 07.08.2021.
//

import UIKit
import Foundation

class BillTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countOfGuestsLabel: UILabel!
    @IBOutlet weak var numberOfTableLabel: UILabel!
    
   
    
    func setup(bill: Bill){
        nameLabel.text = bill.nameClient
        countOfGuestsLabel.text = "\(bill.countPersons)"
        numberOfTableLabel.text = "\(bill.numberOfTable)"
    }
}

