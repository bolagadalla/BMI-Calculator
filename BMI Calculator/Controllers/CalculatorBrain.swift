//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Bola Gadalla on 19/11/19.
//  Copyright © 2019 Bola Gadalla. All rights reserved.
//

import UIKit

struct CalculatorBrain
{
    var bmi: BMI?
    
    mutating func CalculateBMI(height: Float, weight: Float) -> Void
    {
        if height <= 0 { return } // Guarding against undefined
        let bmiValue = weight / pow(height, 2)
        
        switch bmiValue
        {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        case 18.5 ... 24.9:
            bmi = BMI(value: bmiValue, advice: "Fit", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
    func GetCalculatedBMI() -> String
    {
        let resultedBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return resultedBMI
    }
    
    func GetAdvice() -> String
    {
        return bmi?.advice ?? "Ops"
    }
    
    func GetColor() -> UIColor
    {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
