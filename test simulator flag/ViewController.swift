//
//  ViewController.swift
//  test simulator flag
//
//  Created by Robinson, Blake on 12/18/17.
//  Copyright © 2017 Verizon Wireless. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var testSimulatorFlag: UILabel! {
        didSet {
            #if IOS_SIMULATOR
                testSimulatorFlag.text = "Compiler thinks this is a simulator"
            #else
                testSimulatorFlag.text = "Compiler thinks this is a device"
            #endif
        }
    }
    
}

