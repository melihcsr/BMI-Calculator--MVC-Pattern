

import UIKit


struct CalculatorBrain{
    
    
    var bmi : BMI?
    
    var bmiValueText : String?

    
  
    
    mutating func calculateBMI(barHeight : Float , barWeight : Float){
        
        let bmiValue =  barWeight / (barHeight * barHeight)
   
        
        if(bmiValue <= 18.5 ){
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }
        else if(bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
        
     
        
        
    }
    
    func getBMIValueString() -> String{
        let bmiToDecimalPlace = String(format:"%.1f",bmi?.value ?? 0.0)
        return bmiToDecimalPlace
    }
    
    
    func getBMIValue() -> BMI{
        
        return bmi!
    }
   
    
    
    
    
    
    
}
