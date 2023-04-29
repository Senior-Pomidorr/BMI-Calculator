//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Daniil Kulikovskiy on 29.04.2023.
//

import UIKit

struct CalculateBrain {
    
    var bmiValue: Bmi?
    
    func getBmiValue() -> String {
        let bmiDecmal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmiDecmal
    }
    
    func getBmiAdvice() -> String {
        bmiValue?.advice ?? "No advice"
    }
    
    func getBmiColor() -> UIColor {
        bmiValue?.color ?? UIColor.white
    }
    
    mutating func bmiCalculate(weight: Float, hight: Float) {
        let bmiValueCheck = weight / pow(hight, 2)
        if bmiValueCheck < 18.5 {
            bmiValue = Bmi(value: bmiValueCheck, advice: "Eat more pice!", color: .yellow)
        } else if bmiValueCheck < 24.9 {
            bmiValue = Bmi(value: bmiValueCheck, advice: "Your weight is good!", color: .green)
        } else {
            bmiValue = Bmi(value: bmiValueCheck, advice: "Eat less pies!", color: .red)
        }
        
    }
    
    
    
}
