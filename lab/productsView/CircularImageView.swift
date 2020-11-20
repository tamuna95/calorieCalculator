import UIKit

@IBDesignable class CircularImageView: UIImageView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            setupCornerRadius()
        }
    }
    
    @IBInspectable var hasSquareCornerRadius: Bool = false {
        didSet {
            setupCornerRadius()
        }
    }
    
    func setupCornerRadius() {
        layer.cornerRadius = hasSquareCornerRadius ? bounds.width / 2 : cornerRadius
        clipsToBounds = cornerRadius > 0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupCornerRadius()
    }
}

