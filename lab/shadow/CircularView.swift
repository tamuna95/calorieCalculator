import UIKit

public protocol CircularView: class {
    var hasSquareBorderRadius: Bool { get set }
    var cornerRadius: CGFloat { get set }
    var borderWidth: CGFloat { get set }
    var borderColor: UIColor { get set }
    var normalizedCornerRadius: CGFloat { get }
    var borderLayer: CAShapeLayer { get }
    var maskLayer: CAShapeLayer { get }
    
    func makeMaskLayerPath() -> UIBezierPath
    func makeMaskLayer(path: UIBezierPath) -> CAShapeLayer
}

public extension CircularView where Self: UIView {
    func setupCornerRadius() {
        layer.cornerRadius = normalizedCornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        layer.masksToBounds = true
    }
    
    public func makeMaskLayerPath() -> UIBezierPath {
        return UIBezierPath.init(roundedRect: bounds, cornerRadius: normalizedCornerRadius)
    }
    
    public func makeMaskLayer(path: UIBezierPath) -> CAShapeLayer {
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.cgPath
        return maskLayer
    }
}







