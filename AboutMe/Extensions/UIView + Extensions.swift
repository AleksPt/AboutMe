import UIKit

extension UIView {
    func addGradient(
        topColor: UIColor = .seaLight,
        centerColor: UIColor = .seaSemidark,
        bottomColor: UIColor = .seaDark
    ) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, centerColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 0.5, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
