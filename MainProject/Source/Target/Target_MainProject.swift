//
//  Target_MainProjectDemo.swift
//
//  Created by MambaYong on 2021/12/7.
//  Copyright © 2021 MambaYong. All rights reserved.
//

import UIKit

@objc class Target_MainProject: NSObject {
    @objc func Action_demo(_ params:[AnyHashable:Any]) -> UIViewController? {
        guard let name = params["name"] as? String else { return nil }
        
        if let callback = params["callback"] as? (String) -> Void {
            callback("hello \(name) !")
        }
        
        let viewController = DemoViewController()
        return viewController
    }
}
