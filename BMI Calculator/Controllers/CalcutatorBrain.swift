//
//  CalcutatorBrain.swift
//  BMI Calculator
//
//  Created by 平川恵輔 on 2022/10/09.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    var bmi: Float = 0.0
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
    mutating func calculateBMI(heigth: Float, weight: Float){
        bmi = weight / pow(heigth, 2)
    }
    
}


