import UIKit

final class WelcomeViewController: UITabBarController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.userName)\nMy name is \(user.person.firstName) \(user.person.lastName)"
        
    }
}
