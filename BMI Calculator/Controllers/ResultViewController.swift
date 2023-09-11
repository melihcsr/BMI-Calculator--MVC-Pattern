



import UIKit

class ResultViewController: UIViewController {
    
    var bmi : BMI?
    var bmiStringValue : String?
    
    @IBOutlet weak var resultValue: UILabel!
    
    @IBOutlet weak var adviceText: UILabel!
    
    
    override func viewDidLoad() {
        
        
        view.backgroundColor = bmi?.color
        
        super.viewDidLoad()
        
        resultValue.text = bmiStringValue
        adviceText.text = bmi?.advice
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
}
