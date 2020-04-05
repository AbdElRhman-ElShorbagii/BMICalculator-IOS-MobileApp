//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdelrhman Taha on 4/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBmi(_ weight: Float,_ height: Float){
        let bmiValue = weight / pow(height,2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are Under Weight", color: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 24.9  {
            bmi = BMI(value: bmiValue, advice: "You are Normal and Healthy", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are over Weighted", color: #colorLiteral(red: 0.6620179415, green: 0, blue: 0.08410600573, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        // if we add unwrapped "!" to bmi value because we initialized it with optional so i told to the compiler i know what i do, but if we executed getBMIValue() before calculateBmi() the is going to crash so, we will remove it because it's un safe
        let approxBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return approxBMI
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No Advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let bgColor = bmi?.color ??  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return bgColor
    }
}
