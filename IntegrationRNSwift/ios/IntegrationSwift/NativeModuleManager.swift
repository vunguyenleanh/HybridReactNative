//
//  NativeModuleManager.swift
//  IntegrationSwift
//
//  Created by VuNguyenIT on 3/1/18.
//  Copyright © 2018 VuNguyenIT. All rights reserved.
//

import Foundation
import React

@objc(NativeModuleManager)
class NativeModuleManager: RCTEventEmitter {
    
    override func supportedEvents() -> [String]! {
        return ["NativeModuleManagerEvent"]
    }
    
    // Dismiss view controller
    @objc func backToNative(_ reactTag: NSNumber) {
        DispatchQueue.main.async {
            if let _ = self.bridge.uiManager.view(forReactTag: reactTag) {
                NotificationCenter.default.post(name: Notification.Name("dismissRNViewController"), object: nil)
//                let presentedViewController: UIViewController! = view.reactViewController()
//                presentedViewController.dismiss(animated: true, completion: nil)
            }
        }
    }
}
