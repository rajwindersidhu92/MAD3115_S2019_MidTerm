//
//  ShowBillDetailsViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

extension Float
{
    public func currency() -> String
    {
        return String.init(format: "$%0.2f", self)
    }
}

class ShowBillDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    
    @IBOutlet weak var customerID: UILabel!
    @IBOutlet weak var customerName: UILabel!
    @IBOutlet weak var totalBillAmount: UILabel!
    @IBOutlet weak var customerEmail: UILabel!
    @IBOutlet weak var billDetailTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customerID.text = String(Customer.customerClicked.customerId)
        self.customerName.text = String(Customer.customerClicked.firstName)
        self.customerEmail.text = String(Customer.customerClicked.emailId)
        self.totalBillAmount.text = String(Customer.customerClicked.totalAmountToBePaid)
        
        self.billDetailTable.delegate = self
        self.billDetailTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Customer.customerClicked.bills.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "billTableCell")  as! UITableViewCell
        
        let currentbill = Customer.customerClicked.bills[indexPath.row + 1]
        var BillDetails = ""
        var billSpecificDetails = ""
        BillDetails = "Bill ID : \(String(describing: currentbill!.billId)) \nBill Date : \(String(describing: currentbill!.billDate)) \nBill Type : \(String(describing: currentbill!.billType)) \nBill Total : \(String(describing: currentbill!.totalBillAmount.currency()))"
        if currentbill?.billType == "Mobile" {
            cell.textLabel?.numberOfLines = 12
            let mobileBill = currentbill as! Mobile
            billSpecificDetails = "\n Manufacture : \(String(describing: mobileBill.mobileManufacturerName))\n internet used : \(String(describing: mobileBill.internetGBUsed))\n Minutes used : \(String(describing: mobileBill.minuteUsed))\n Mobile number : \(String(describing: mobileBill.mobileNumber))\n Plan Name : \(String(describing: mobileBill.planName))"
        } else {
            if currentbill?.billType == "Hydro" {
                cell.textLabel?.numberOfLines = 12
                let hydroBill = currentbill as! Hydro
                billSpecificDetails = "\n Agency Name : \(String(describing: hydroBill.agencyName))\n Units consumed : \(String(describing: hydroBill.unitConsumed))"
            } else {
                if currentbill?.billType == "Internet "{
                    cell.textLabel?.numberOfLines = 12
                    let internetBill = currentbill as! Internet
                    billSpecificDetails = "\n intenet gb used : \(String(describing: internetBill.internetGBUsed))\n Providers name : \(String(describing: internetBill.providerName))"
                }
            }
        }
        cell.textLabel?.text = "\(BillDetails)/n\(billSpecificDetails)"
        return cell
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
