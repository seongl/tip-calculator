//
//  ViewController.swift
//  tippy
//
//  Created by Lee, Seong on 8/20/17.
//  Copyright © 2017 Lee, Seong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        updateFaces()
        // Do any additional setup after loading the view, typically from a nib.
        
//        var TapGesture = UITapGestureRecognizer(target: self, action: "onTap")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    func calculateTip() {
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //        tipLabel.text = "$\(tip)"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

        //---
        let defaults = UserDefaults.standard
        let currentTime = Int(NSDate().timeIntervalSince1970)
        defaults.set(currentTime, forKey: "lastAccessTime")
        defaults.set(billField.text, forKey: "prevBill")
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTipPercentage")
        
        defaults.synchronize()
        //---
    }

    
    @IBAction func calculateTip(_ sender: AnyObject) {
        calculateTip()
    }
    
    // viewDidLoad
    // viewWillAppear - any action to start before transition anitmaiton starts
    // viewDidAppear - any action to start after the transition animaiton ends
    // ----- as it is hidden
    // viewWillDisapper
    // viewDidDisapper

    
    var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = NSLocale.current
        return formatter
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // UI color change
        self.view.backgroundColor = UIColor.darkGray
        billField.backgroundColor = UIColor.lightGray
        billField.textColor = UIColor.cyan
        
        tipControl.tintColor = UIColor.cyan
        tipControl.backgroundColor = UIColor.blue
        
        tipLabel.textColor = UIColor.cyan
        totalLabel.textColor = UIColor.cyan
        
        let defaults = UserDefaults.standard

        //---
        let lastAccessTime = defaults.integer(forKey: "lastAccessTime")
        let currentTime = Int(NSDate().timeIntervalSince1970)
        if(currentTime - lastAccessTime < 600) {
            let prevBill = defaults.string(forKey: "prevBill")
            billField.text = prevBill
        }
        //---
        
        let intValue = defaults.integer(forKey: "defaultTipPercentage")
        print("intValue" + String(intValue))
        tipControl.selectedSegmentIndex = intValue
        
        calculateTip()
        
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        billField.becomeFirstResponder()
        

        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

