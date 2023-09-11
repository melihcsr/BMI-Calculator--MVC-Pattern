

import UIKit

class CalculateViewController: UIViewController {
    
    
    var bmiValue : String?
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightBar: UISlider!
    @IBOutlet weak var weightBar: UISlider!
    
    @IBOutlet weak var heightResultText: UILabel!
    
    @IBOutlet weak var weightResultText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightBarAction(_ sender: UISlider) {
        
     
        heightResultText.text = String(format: "%.2f",sender.value) + " m"
        
    }
    
    @IBAction func weightBarAction(_ sender: UISlider) {
        weightResultText.text = String(format: "%.0f",sender.value) + " Kg"
    }
    @IBAction func calculateButtonAction(_ sender: UIButton) {
        
        let heightBar = heightBar.value
        let weightBar = weightBar.value
        calculatorBrain.calculateBMI(barHeight: heightBar, barWeight: weightBar)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
   
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBMIValue()
            destinationVC.bmiStringValue = calculatorBrain.getBMIValueString()
            
            
            
            
        }
    }
}

