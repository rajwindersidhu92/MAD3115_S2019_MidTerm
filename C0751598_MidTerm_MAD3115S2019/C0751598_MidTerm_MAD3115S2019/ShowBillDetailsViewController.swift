//
//  ShowBillDetailsViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController//UITableViewDelegate, UITableViewDataSource
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
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Customer.customerClicked.bills.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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
