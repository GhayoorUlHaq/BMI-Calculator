//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ghayoor ul Haq on 02/05/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice:"Eat mere pies" , color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice:"Fit as fiddle" , color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1) )
        }else {
            bmi = BMI(value: bmiValue, advice:"Eat less pies" , color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1) )
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice to you"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.4116955698, green: 0.5137599111, blue: 0.6665828228, alpha: 1)
    }
    
    
}
