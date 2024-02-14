import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let user = User.getUser()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.userName
        passwordTextField.text = user.password
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarVC = segue.destination as? UITabBarController {
            
            tabBarVC.viewControllers?.forEach { viewController in
                if let welcomeVC = viewController as? WelcomeViewController {
                    welcomeVC.user = user
                } else if let navigationVC = viewController as? UINavigationController {
                    let personVC = navigationVC.topViewController as? PersonViewController
                    personVC?.user = user
                }
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user.userName, passwordTextField.text == user.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
            return false
        }
        
        return true
    }
    
    // MARK: - IB Actions
    @IBAction private func forgotUserNameAction() {
        showAlert(title: "Oops!", message: "Your name is \(user.userName)")
    }
    
    @IBAction private func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Hide the keyboard
extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: - Show alert
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) { _ in
                self.passwordTextField.text = ""
            }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
