//
//  MixerReactModule.swift
//  IntegrationSwift
//
//  Created by VuNguyenIT on 3/2/18.
//  Copyright © 2018 VuNguyenIT. All rights reserved.
//

import Foundation
import React

class MixerReactModule: NSObject {
    var bridge: RCTBridge?
    static let sharedInstance = MixerReactModule()
    
    
    func createBridgeIfNeeded() -> RCTBridge {
        if bridge == nil {
            bridge = RCTBridge.init(delegate: self, launchOptions: nil)
        }
        return bridge!
    }
    
    func navigateToRNModule(_ moduleName: String, initialProperties: [String : Any]?) -> RCTRootView {
        let viewBridge = createBridgeIfNeeded()
        let rootView: RCTRootView = RCTRootView(
            bridge: viewBridge,
            moduleName: moduleName,
            initialProperties: initialProperties)
        return rootView
    }
}

extension MixerReactModule: RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        // Return URL below during development
        return URL(string: "http://localhost:8081/index.bundle?platform=ios")
        
        // Return bundle below if using a pre-bundled file on disk
        //return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
    }
}
