//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Gibbonsoft Limited on 29/07/2016.
//  Copyright © 2016 feliun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var conversionsLabel: UILabel!
    
    var conversions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadConversions()
    }
    
    func reloadConversions() {
        conversionsLabel.text = String(self.conversions) + " conversions"
    }
    
    @IBAction func ConvertClicked(_ sender: UIButton) {
        if let result = tempInput.text {
            if result == "" {
                return
            } else {
                if let value = Double(result) {
                    let output = value * (9/5) + 32
                    resultLabel.text = String(output)
                    conversions += 1
                    reloadConversions()
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

