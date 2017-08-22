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
        let defaults = UserDefaults.standard // Swift 3 syntax, previously NSUserDefaults.standardUserDefaults()
        
        print("AA:" + String(tipControl.selectedSegmentIndex))
        defaults.set(tipControl.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
 
        // UI color change
        self.view.backgroundColor = UIColor.darkGray
        
        tipControl.tintColor = UIColor.cyan
        tipControl.backgroundColor = UIColor.blue

        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "defaultTipPercentage")
        tipControl.selectedSegmentIndex = intValue
    }

}
