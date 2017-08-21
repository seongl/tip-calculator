//
//  SettingsViewController.swift
//  tippy
//
//  Created by Lee, Seong on 8/20/17.
//  Copyright © 2017 Lee, Seong. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func setDefaultTip() {
//        let tipPercentages = [0.18, 0.2, 0.25]
//        let newDefaultTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let defaults = UserDefaults.standard // Swift 3 syntax, previously NSUserDefaults.standardUserDefaults()
//        defaults.set("some_string_to_save", forKey: "some_key_that_you_choose")
        
        print("AA:" + String(tipControl.selectedSegmentIndex))
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "defaultTipPercentage")
        tipControl.selectedSegmentIndex = intValue
    }

}
