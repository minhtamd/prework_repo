//
//  ViewController.swift
//  Tipper
//
//  Created by Minh-Tam Doan on 4/8/19.
//  Copyright © 2019 Minh-Tam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercent: UILabel!
    @IBOutlet weak var tipControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        tipControl.value = roundf(tipControl.value)
        var intTip = Int(tipControl.value)
        let tipPerc = Double(0.01 * Double(intTip))
        let tip = bill * tipPerc
        let total = bill + tip
        
        tipPercent.text = String(format: "%d%@", Int(tipControl.value), "%")
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

