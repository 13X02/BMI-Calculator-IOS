//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abhijith H on 24/10/22.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmi : BMI?
    
    mutating func calculateBMI(height :String , weight : String){
        let bmiValue = Float(weight)! / (Float(height)! * Float(height)!)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat some porotta and beef !!", color: UIColor(red: 0.13, green: 0.80, blue: 0.78, alpha: 1.00))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit like mammootty !", color: UIColor(red: 0.21, green: 0.81, blue: 0.55, alpha: 1.00))
        }else{
            bmi = BMI(value: bmiValue, advice: "Hold up on those porotta !!", color: UIColor(red: 0.60, green: 0.07, blue: 0.10, alpha: 1.00))
        }

    }
    func getBMIValue() -> String{
        let bmiToString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToString
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "Eat like usual "
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.yellow
    }
}
