//
//  UIView+FirstResponder.swift
//  ZendeskIntegrationTest
//
//  Created by Rustem Kaymaz on 10.09.21.
//

import UIKit

@objc
extension UIView {
    var firstResponder: UIView? {
        if isFirstResponder {
            return self
        }
        for subview in subviews {
            if let firstResponder = subview.firstResponder {
                return firstResponder
            }
        }
        return nil
    }
}
