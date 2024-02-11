import UIKit

final class LoginViewController: UIViewController {

    private let logIn = "1"
    private let password = "1"
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logInAction() {
        if userNameTextField.text == logIn, passwordTextField.text == password {
            
        } else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func forgotUserNameAction() {
        showAlert(title: "Oops!", message: "Your name is \(logIn)")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
}

extension LoginViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

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
