//
//  FirstViewController.swift
//  HW4
//
//  Created by Влад Бокин on 06.08.2021.
//

import UIKit
import Foundation

class FirstViewController: UIViewController {

    //MARK: - textField
    @IBOutlet weak var clientNameTextField: UITextField!
    @IBOutlet weak var countOfGuestsTextField: UITextField!
    @IBOutlet weak var numberOfTablesTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var bills = [Bill]()
    
    
    @IBAction func billButton(_ sender: Any) {
//        billAlert(title: "Завершение", message: "Выставить счет")
        
        toBill()
    }
    
    //MARK: - alert
//    func billAlert(title: String, message: String){
//        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
//            let vc = SecondViewController()
//                        vc.delegate = self
//            self?.navigationController?.pushViewController(vc, animated: true)
//
//
//        }
//        let cancel = UIAlertAction(title: "Отмена", style: .default)
//        alertController.addAction(cancel)
//        alertController.addAction(action)
//
//        self.present(alertController, animated: true, completion: nil)
//    }
    
    func toBill(){
//        guard let oneBill = collectOrderData() else { return }
//        bills.append(oneBill)
        
        guard let bill = collectOrderData() else {
                   let invalidDataAlert = UIAlertController(title: "Данные неверны!", message: "Проверьте введенные данные", preferredStyle: .alert)
                   invalidDataAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                   present(invalidDataAlert, animated: true, completion: nil)
                   return
               }
               bills.append(bill)
               
               let billAlert = UIAlertController(title: "TO BILL?", message: "Are you ready to bill?", preferredStyle: .alert)
               
               let successAction = UIAlertAction(title: "YES!", style: .default) { [weak self] _ in
                   let vc = SecondViewController()
                   vc.delegate = self
                   self?.navigationController?.pushViewController(vc, animated: true)
               }
               
               billAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
               billAlert.addAction(successAction)
               
               present(billAlert, animated: true, completion: nil)
    }

        
    func collectOrderData() -> Bill? {
        guard let clientName = clientNameTextField.text else { return nil }
        guard let countOfGuestText = countOfGuestsTextField.text else { return nil }
        guard let countOfGuest = Int(countOfGuestText) else { return nil}
        guard let numberOfTableText = numberOfTablesTextField.text else { return nil }
        guard let numberOfTable = Int(numberOfTableText) else { return nil}
        
        return Bill(client: clientName, countPersons: countOfGuest, table: numberOfTable)
        
    }
}


extension FirstViewController: BillViewControllerDelegate{
    func getBill() -> [Bill]? {
        return bills
       
    }
}
