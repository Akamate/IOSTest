//
//  CallingFrameworkFunction.swift
//  SimpleSwiftFramework
//
//  Created by Aukmate  Chayapiwat on 26/1/2562 BE.
//  Copyright © 2562 AppMan. All rights reserved.
//

import Foundation
import UIKit

public class CallingFrameworkFunction {
    public static func alert(message : String){
        let alert = UIAlertController(title: "Alert from framework", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        alert.addAction(action)
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            topController.present(alert,animated: true,completion: nil)
       }
       
    }
}

