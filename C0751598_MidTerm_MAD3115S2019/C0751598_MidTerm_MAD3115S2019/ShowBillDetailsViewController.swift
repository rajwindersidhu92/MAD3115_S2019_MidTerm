//
//  ShowBillDetailsViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
    @IBOutlet weak var customerID: UILabel!
    @IBOutlet weak var customerName: UILabel!
    @IBOutlet weak var totalBillAmount: UILabel!
    @IBOutlet weak var customerEmail: UILabel!
    @IBOutlet weak var billDetailTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var yPos = 90
        for i in 0..<dataArr.count {
            let element = dataArr[i]
            let labelNum = UILabel()
            let split = element.components(separatedBy: ",")
            
            let num1 = split[0]
            let num2 = split[1]
            
            let num1Nnum2 = "number 1 :" + num1 + " number 2:" + num2
            labelNum.text = num1Nnum2
            labelNum.textAlignment = .center
            labelNum.frame = CGRect( x:10, y:yPos, width:250, height: 80)
            yPos += 80
            self.view.addSubview(labelNum)
            
        }
        // Do any additional setup after loading the view.
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
