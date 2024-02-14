import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient()
        welcomeLabel.text = "Welcome, \(user.userName)!\nMy name is \(user.person.firstName) \(user.person.lastName)"
    }
}
