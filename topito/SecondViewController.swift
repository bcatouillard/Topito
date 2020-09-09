

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    var answerArray: [Animal: Int] = [Animal.dog: 0, Animal.cat: 0, Animal.rabbit: 0, Animal.turtle: 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressSteak(_ sender: UIButton) {
        addOneToAnswerArray(key: .dog)
    }
    @IBAction func didPressFish(_ sender: UIButton) {
        addOneToAnswerArray(key: .cat)
    }
    @IBAction func didPressCarrots(_ sender: UIButton) {
        addOneToAnswerArray(key: .rabbit)
    }
    @IBAction func didPressCornButton(_ sender: UIButton) {
        addOneToAnswerArray(key: .turtle)
    }
    
    
    func addOneToAnswerArray(key: Animal){
        if let value = answerArray[key] {
            answerArray.updateValue(value+1, forKey: key)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondQuestionViewController {
            destination.answerArray = self.answerArray
        }
    }
}
