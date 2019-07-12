//
//  Bill.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import Foundation


class Bill{
    
    var billId:Int = 0
    var billDate:Date = Date()
    var billType:String = String()
    var totalBillAmount:Float = 0
    
    
    init(billId: Int, billDate:Date,billType: String,totalBillAmount: Float ) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    
    func updateTotalBillAmount(amountIncreasedBy: Float) {
        self.totalBillAmount = self.totalBillAmount + amountIncreasedBy
    }
    
    
}

