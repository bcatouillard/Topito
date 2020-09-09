import UIKit

class ThirdQuestionViewController: UIViewController {
    
    var answerArray: [Animal: Int]!
    var resultTitle: String = ""
    var resultSubtitle: String = ""
    
    @IBOutlet weak var sliderLike: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressSubmit(_ sender: UIButton) {
        if 0 <= sliderLike.value && sliderLike.value < 1 {
            addToArray(key: .cat)
        } else if 1 <= sliderLike.value && sliderLike.value < 2 {
            addToArray(key: .rabbit)
        } else if 2 <= sliderLike.value && sliderLike.value < 3 {
            addToArray(key: .turtle)
        } else {
            addToArray(key: .dog)
        }
        getResult()
    }
    
    func addToArray(key: Animal){
        let oldValue = answerArray[key]
        answerArray.updateValue(oldValue!+1, forKey: key)
    }
    
    
    func getResult(){
        let keyWithGreatestValue = answerArray.max { a, b in a.value < b.value}
        switch keyWithGreatestValue?.key {
            case .cat:
                resultTitle = "You're a 🐱"
                resultSubtitle = "Miaou"
            case .dog:
                resultTitle = "You're a 🐶"
                resultSubtitle = "Ouaf"
            case .rabbit:
                resultTitle = "You're a 🐰"
                resultSubtitle = "..."
            case .turtle:
                resultTitle = "You're a 🐢"
                resultSubtitle = "..."
            default:
                break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ResultViewController {
            destination.resultTitle = self.resultTitle
            destination.resultSubtitle = self.resultSubtitle
        }
    }
}
