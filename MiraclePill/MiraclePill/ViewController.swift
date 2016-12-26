//
//  ViewController.swift
//  MiraclePill
//
//  Created by Yiyun Liang on 2016-12-26.
//  Copyright © 2016 Yiyun Liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    // weak keyword: weak reference
    @IBOutlet weak var provincePicker: UIPickerView!
    @IBOutlet weak var provPickerBtn: UIButton!
    
    @IBOutlet weak var countryTitle: UILabel!
    @IBOutlet weak var countryTxtField: UITextField!
    @IBOutlet weak var postalCodeTitle: UILabel!
    @IBOutlet weak var postalCodeTxtField: UITextField!
    
    @IBOutlet var pageView: UIView!
    
    
    let provinces = ["Alberta", "British Columbia", "Manitoba", "Newfoundland and Labrador", "New Brunswick", "Nova Scotia", "Ontario", "Prince Edward Island", "Québec", "Saskatchewan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        provincePicker.dataSource = self
        provincePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        // self.view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func provPickerBtnPressed(_ sender: Any) {
        // select province button pressed
        provincePicker.isHidden = false
        
        countryTitle.isHidden = true
        countryTxtField.isHidden = true
        postalCodeTitle.isHidden = true
        postalCodeTxtField.isHidden = true
    }
    
    // need to have these functions due to implementing protocols
    // public protocol UIPickerViewDataSource : NSObjectProtocol
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // what happens when we select a row
        provPickerBtn.setTitle(provinces[row], for: UIControlState.normal)
        provincePicker.isHidden = true
        
        countryTitle.isHidden = false
        countryTxtField.isHidden = false
        postalCodeTitle.isHidden = false
        postalCodeTxtField.isHidden = false
    }
    

}

