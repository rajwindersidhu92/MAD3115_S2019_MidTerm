//
//  BillListTableViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

class BillListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var selecterRowIndex = 0
    
    override func viewDidLoad() {
        
        var bill1 = Hydro(agencyName : "Planet Energy", unitConsumed : 29.0, billId: 1, billDate: Date() , billType: "Hydro", totalbillAmount: 45.35)
        
        var cutomer1 = Customer(customerId :1, firstName :"Pritesh", lastName : "Patel", emailId : "amallabyg@topsy.com", bills: [1 : bill1])
        
        var bill2 = Internet(internetGBUsed : 500.0, providerName : "Rogers", billId : 2, billDate : Date(), billType : "Internet", totalbillAmount : 56.50)
        
        cutomer1.addMoreBills(newBills: [2 : bill2])
        
        var cutomer2 = Customer(customerId :2, firstName :"Vipul", lastName : "Garg", emailId : "adurrant1@github.io", bills: [1 : bill1])
        
        cutomer2.addMoreBills(newBills: [2 : bill2])
        
        var bill3 = Mobile(mobileManufacturerName : "Galaxy Samsung Inc.", planName : "Prepaid Talk + Text plan", mobileNumber : "1234567890", internetGBUsed : 5.0 , minuteUsed : 356.0, billId: 3, billDate: Date(), billType: "Mobile", totalbillAmount: 250.69)
        
        var bill4 = Mobile(mobileManufacturerName : "Apple Inc. iPhone X MAX+", planName : "LTE+3G 9.5GB Promo plan", mobileNumber : "9012345678", internetGBUsed :  4.0 , minuteUsed : 230.0, billId: 4, billDate: Date(), billType: "Mobile", totalbillAmount: 300.78)
        
        cutomer2.addMoreBills(newBills: [3 : bill3])
        cutomer2.addMoreBills(newBills: [4 : bill4])
        
        Customer.customerArray.append(cutomer1)
        Customer.customerArray.append(cutomer2)
        
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Customer.customerArray.count
    }
    
    func tableView(_ tabDataew: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCustomer")!
        
        let cust = Customer.customerArray[indexPath.row]
        
        cell.textLabel?.text = cust.firstName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        Customer.customerClicked = Customer.customerArray[indexPath.row]
      //  print(Customer.customerClicked)
       performSegue(withIdentifier: "ShowCustomerDetails", sender: "nil")
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
