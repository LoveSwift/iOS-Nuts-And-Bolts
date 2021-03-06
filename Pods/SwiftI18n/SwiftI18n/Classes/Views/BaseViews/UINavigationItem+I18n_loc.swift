//
//  UINavigationItem+I18n.swift
//  SwiftI18n
//
//  Created by Vlaho Poluta on 08/10/2017.
//

import UIKit

public extension UINavigationItem {
    
    static let loc_titleKey = "KEY"
    
    @IBInspectable var locTitleKey: String? {
        get {
            return loc_keysDictionary[UIViewController.loc_titleKey]
        }

        set(newValue) {
            loc_keysDictionary[UIViewController.loc_titleKey] = newValue
            loc_localeDidChange()
        }
    }
    
}

