//
//  Internet.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import Foundation

class Internet: Bill {
    var internetGBUsed:Float = 0
    var providerName:String = String()
    
    init(internetGBUsed: Float, providerName: String, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalbillAmount)
        self.internetGBUsed = internetGBUsed
        self.providerName = providerName
    }
    
    func updateInternetGBUsed(dataUsed: Float) {
        self.internetGBUsed = self.internetGBUsed + dataUsed
    }

    
}
