//
//  SettingsViewController.swift
//  tips
//
//  Created by Christopher Kintner on 1/31/15.
//  Copyright (c) 2015 Christopher Kintner. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillAppear(animated: Bool) {
        var defaultTip = Settings.getDefaultTip()
        var index = find(Settings.Static.tipPercentages, defaultTip)
        
        defaultTipControl.selectedSegmentIndex = index!
    }
    
    @IBAction func doneTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func defaultTipChanged(sender: AnyObject) {
        var tipPercentage = Settings.Static.tipPercentages[defaultTipControl.selectedSegmentIndex]
        Settings.setDefaultTip(tipPercentage)
        dismissViewControllerAnimated(true, completion: nil)
    }

}
