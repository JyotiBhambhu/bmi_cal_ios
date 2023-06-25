//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Jyoti on 25/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("BMI calculation scence loaded")
        bmiLbl.isHidden = true
    }
   
    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var weightTxt: UITextField!
    @IBOutlet weak var heightTxt: UITextField!
    
    @IBAction func calculateBtn(_ sender: Any) {
        let weight = Float(weightTxt.text!)!
        let height = Float(heightTxt.text!)!
        let bmi = Double((weight / height / height) * 10000).rounded(toPlaces: 1)
        print("bmi", bmi, "weight", weight, "height", height)
        bmiLbl.text = "Your BMI is: \(String(bmi))"
        bmiLbl.isHidden = false
    }
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

