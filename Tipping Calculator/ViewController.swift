//
//  ViewController.swift
//  Tipping Calculator
//
//  Created by Lanique Peterson ピタソン・ラニク on 1/2/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentage = [0.10, 0.15, 0.18, 0.20]
        //get bill
        let bill = Double(billField.text!) ?? 0
        //calculate tip and total
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update tip and total label
        //tipLabel.text = "$10"
        //totalLabel.text = "$110"
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}
