import UIKit

final class PersonViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.firstName + " " + user.person.lastName
        
        avatarImageView.image = UIImage(named: user.person.photo)
        avatarImageView.layer.cornerRadius = 75
        avatarImageView.clipsToBounds = true
        
        firstNameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
        ageLabel.text = "\(user.person.studyPeriod) месяцев"
        cityLabel.text = user.person.cityOfResidence
        contactLabel.text = user.person.telegram
        
        view.addGradient()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioVC = segue.destination as? BioViewController {
            bioVC.user = user
        }
    }
}
