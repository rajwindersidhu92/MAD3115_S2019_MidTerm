//
//  Customer.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import Foundation


class Customer{
    
    var customerId:Int = Int()
    var firstName:String = String()
    var lastName:String = String()
    var emailId:String = String()
    
    static  var customerArray = Array<Customer>()
    var bills = [Int: Bill]()
    var totalAmountToBePaid: Float {
        get {
            var sum:Float = 0.0
            for bill in bills {
                sum = sum + bill.value.totalBillAmount
            }
            return sum
        }
    }
    
    init(customerId : Int, firstName : String, lastName : String, emailId : String, bills : [Int: Bill]?) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        if let b = bills
        {
            self.bills = b
        }
    }
    
    func addMoreBills(newBills : [Int: Bill]){
        for bill in newBills {
            bills[bill.key] = bill.value
        }
    }
    
    
    
}
