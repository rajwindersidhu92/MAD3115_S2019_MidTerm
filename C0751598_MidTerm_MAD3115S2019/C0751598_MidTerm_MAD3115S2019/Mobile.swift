//
//  Mobile.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import Foundation

class Mobile: Bill {
    
    var mobileManufacturerName:String = String()
    var planName:String = String()
    var mobileNumber:String = String()
    var internetGBUsed:Float = 0.0
    var minuteUsed:Float = 0.0
    
    init(mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Float , minuteUsed : Float, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalbillAmount)
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
    }
    
    func updateInternetGBUsed(dataUsed: Float) {
        self.internetGBUsed = self.internetGBUsed + dataUsed
    }

    
}

