import UIKit

final class BioViewController: UIViewController {

    @IBOutlet weak var bioLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        bioLabel.text = user.person.bio
    }
    
}
