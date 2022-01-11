//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Evgenii Lysenko on 1/10/22.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
       let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
       
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice ?? "No advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color ?? #colorLiteral(red: 0.2392156863, green: 0.4980392157, blue: 0.7607843137, alpha: 1)
        return bmiColor
    }
}
