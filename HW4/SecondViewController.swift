//
//  SecondViewController.swift
//  HW4
//
//  Created by Влад Бокин on 06.08.2021.
//

import UIKit

class SecondViewController: UIViewController {

   
    
    @IBOutlet weak var billsTableView: UITableView!
    
    var delegate: BillViewControllerDelegate?
    var bills = [Bill]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myBill = delegate?.getBill(){
            bills = myBill
            print(bills.count)
        }
        
        self.billsTableView.dataSource = self
        self.billsTableView.delegate = self
        self.billsTableView.register(BillTableViewCell.self, forCellReuseIdentifier: "BillTableViewCell")
    }

}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bills.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillTableViewCell") as! BillTableViewCell
        cell.setup(bill: bills[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 80
        }
    
    
}
