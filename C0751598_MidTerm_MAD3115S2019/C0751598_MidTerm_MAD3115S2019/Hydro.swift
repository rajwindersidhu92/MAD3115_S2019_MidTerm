//
//  Hydro.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import Foundation

class Hydro: Bill {
    var agencyName:String = String()
    var unitConsumed:Float = 0.0
    
    init(agencyName : String, unitConsumed : Float, billId: Int, billDate: Date, billType: String, totalbillAmount: Float) {
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalbillAmount)
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        
    }
    
    func updateUnitConsumed(unitConsumed: Float) {
        self.unitConsumed = self.unitConsumed + unitConsumed
    }

    
}
