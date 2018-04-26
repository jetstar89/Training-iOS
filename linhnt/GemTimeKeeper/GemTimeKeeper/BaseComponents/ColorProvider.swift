//
//  AppColor.swift
//  StaffManagement
//
//  Created by kemshiro on 3/23/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ColorProvider: UIColor {
    public class func navigationBarColor() -> UIColor {
        return UIColor(red: 63.0/255.0, green: 95.0/255.0, blue: 163.0/255.0, alpha: 1.0)
    }
    
    public class func tableViewCellSelected() -> UIColor{
        return UIColor(red: 35.0/255.0, green: 61.0/255.0, blue: 117.0/255.0, alpha: 1.0)
    }
    
    public class func colorRed() -> UIColor{
        return UIColor(red: 208.0/255.0, green: 2.0/255.0, blue: 27.0/255.0, alpha: 1.0)
    }

    public class func colorOrange() -> UIColor{
        return UIColor(red: 245.0/255.0, green: 166.0/255.0, blue: 35.0/255.0, alpha: 1.0)
    }
    
    public class func pinkBrighter() -> UIColor{
        return UIColor(red: 247.0/255.0, green: 122.0/255.0, blue: 134.0/255.0, alpha: 1.0)
    }
    
    public class func pinkDarker() -> UIColor{
        return UIColor(red: 242.0/255.0, green: 81.0/255.0, blue: 95.0/255.0, alpha: 1.0)
    }
    
    public class func lbDayColor() -> UIColor{
        return UIColor(red: 73.0/255.0, green: 124.0/255.0, blue: 233.0/255.0, alpha: 1.0)
    }
    
    public class func colorTransparent() -> UIColor{
        return UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 0.0)
    }
}
