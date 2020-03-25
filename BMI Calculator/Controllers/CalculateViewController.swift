//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Bola Gadalla on 19/11/19.
//  Copyright © 2019 Bola Gadalla. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController
{

    @IBOutlet weak var heightChange: UISlider!
    @IBOutlet weak var weightChange: UISlider!
    @IBOutlet weak var heightValueText: UILabel!
    @IBOutlet weak var weightValueText: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func SliderControl(_ sender: UISlider)
    {
        heightValueText.text = String(format: "%.1f", heightChange.value) + "m"
        weightValueText.text = String(format: "%.0f", weightChange.value) + "Kg"
    }
    
    @IBAction func CalculateBMI(_ sender: UIButton)
    {
        let height = heightChange.value
        let weight = weightChange.value
        calculatorBrain.CalculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.resultBIM = calculatorBrain.GetCalculatedBMI()
            destinationVC.advice = calculatorBrain.GetAdvice()
            destinationVC.color = calculatorBrain.GetColor()
        }
    }
}

