//
//  Settings.swift
//  tips
//
//  Created by Christopher Kintner on 1/31/15.
//  Copyright (c) 2015 Christopher Kintner. All rights reserved.
//

import Foundation

class Settings {
    struct Static {
        static let defaultTipKey = "default_tip_setting"
        static let tipPercentages = [0.18, 0.2, 0.22]
    }
    
    class func getDefaultTip() -> Double {
        var defaults = NSUserDefaults.standardUserDefaults()
        var result = defaults.doubleForKey(Static.defaultTipKey)
        
        return result == 0 ? 0.2 : result
        
    }
    
    class func setDefaultTip(percentage: Double) {
        var defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(percentage, forKey: Static.defaultTipKey)
        defaults.synchronize()
    }
}
