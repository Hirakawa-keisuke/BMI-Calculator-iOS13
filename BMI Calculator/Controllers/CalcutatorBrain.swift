//
//  CalcutatorBrain.swift
//  BMI Calculator
//
//  Created by 平川恵輔 on 2022/10/09.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
        
    mutating func calculateBMI(heigth: Float, weight: Float){
        let bmiValue = weight / pow(heigth, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        }
        
    }
    
}


