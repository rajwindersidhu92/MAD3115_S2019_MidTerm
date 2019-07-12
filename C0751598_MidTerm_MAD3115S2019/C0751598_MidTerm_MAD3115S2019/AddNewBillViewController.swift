//
//  AddNewBillViewController.swift
//  C0751598_MidTerm_MAD3115S2019
//
//  Created by Rajwinder Kaur on 2019-07-12.
//  Copyright © 2019 Rajwinder Kaur. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController {

    @IBOutlet weak var billDate: UIDatePicker!
    @IBOutlet weak var billTypePicker: UIPickerView!
    var BillType = ["Mobile","Internet","Hydro"]
    
    @IBOutlet weak var billAmount: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.billTypePicker.delegate = self
        self.billTypePicker.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func onSave(_ sender: Any) {
        var bill = bill(self.billAmount,self.billDate,self.BillType)
        Customer.customerClicked.bills[]
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

extension AddNewBillViewController:UIPickerViewDataSource
{
    
    //No of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //No. of items in picker view
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return self.BillType.count
        }
    }


extension AddNewBillViewController:UIPickerViewDelegate
{
    //Set the Value for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return self.BillType[row]
       
        
    }
    
//    //Fetch the selected values
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        //self.lblCourseName.text = self.courseArray[row]
//        self.courseArray[row]
//        
//        
//        let strCollegeName = self.collegeName[pickerView.selectedRow(inComponent: PickerType.COLLEGE.rawValue)]
////        let strCourseName = self.courseArray[pickerView.selectedRow(inComponent: PickerType.COURSE.rawValue)]
//        
//        
//    }
//}
//
//extension AddNewBillViewController:UIPickerViewDataSource
//{
//    
//    //No of components
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 2
//    }
//    
//    //No. of items in picker view
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if component == PickerType.COLLEGE.rawValue{
//            return self.collegeName.count
//        }else{
//            return self.courseArray.count
//        }
//    }
}
