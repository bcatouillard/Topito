

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultTitleLabel: UILabel!
    @IBOutlet weak var resultSubtitleLabel: UILabel!
    
    var resultTitle: String!
    var resultSubtitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTitleLabel.text = resultTitle
        resultSubtitleLabel.text = resultSubtitle
    }


}
