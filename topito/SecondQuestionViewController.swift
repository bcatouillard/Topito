import UIKit

class SecondQuestionViewController: UIViewController{
    
    var answerArray: [Animal: Int]!
    
    
    @IBOutlet weak var swimmingSwitch: UISwitch!
    @IBOutlet weak var sleepingSwitch: UISwitch!
    @IBOutlet weak var eatingSwitch: UISwitch!
    @IBOutlet weak var cuddlingSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func didPressSubmit(_ sender: UIButton) {
        let switchList: [UISwitch: Animal] = [swimmingSwitch: .turtle, sleepingSwitch: .cat, eatingSwitch: .dog, cuddlingSwitch: .rabbit]
        for (key, value) in switchList {
            if key.isOn{
                let oldValue = answerArray[value]
                answerArray.updateValue(oldValue!+1, forKey: value)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ThirdQuestionViewController {
            destination.answerArray = self.answerArray
        }
    }
}
