//
//  ViewController.swift
//  Prework
//
//  Created by Student on 1/31/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billamounttextfield: UITextField!
    @IBOutlet weak var tipamountlabel: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBOutlet weak var totallabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculatetip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double (billamounttextfield.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipcontrol.selectedSegmentIndex]
        let total = bill + tip
        // Updaet Tip Amount Label
        tipamountlabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totallabel.text = String(format: "$%.2f", total)
    }

}

