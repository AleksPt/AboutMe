import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.firstName + "" + user.person.lastName
        
        avatarImageView.image = .avatar
        avatarImageView.layer.cornerRadius = 75
        avatarImageView.clipsToBounds = true
        
        firstNameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
        ageLabel.text = "\(user.person.age)"
        cityLabel.text = user.person.city
    }
}
