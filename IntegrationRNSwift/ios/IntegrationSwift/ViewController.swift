//
//  ViewController.swift
//  IntegrationSwift
//
//  Created by VuNguyenIT on 3/1/18.
//  Copyright © 2018 VuNguyenIT. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
    
    var integrationRNSwift: RCTRootView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func navigateRNPress(_ sender: Any) {
        NotificationCenter.default.addObserver(self, selector: #selector(backToNative), name: Notification.Name("dismissRNViewController"), object: nil)
        
        integrationRNSwift = MixerReactModule.sharedInstance.navigateToRNModule(
            "IntegrationRNSwift",
            initialProperties: nil)
        let rnController = ViewController()
        rnController.view = integrationRNSwift
        self.present(rnController, animated: true, completion: nil)
//        integrationRNSwift.frame = self.view.bounds
//        self.view.addSubview(integrationRNSwift)
    }
    
    @objc func backToNative(){
        self.dismiss(animated: true, completion: nil)
        //self.integrationRNSwift.removeFromSuperview()
    }
    
}

