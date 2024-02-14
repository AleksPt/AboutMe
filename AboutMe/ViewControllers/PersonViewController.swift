import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "123"
        avatarImageView.image = .avatar
        avatarImageView.layer.cornerRadius = 75
        avatarImageView.clipsToBounds = true
    }
}
