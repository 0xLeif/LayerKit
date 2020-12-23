import QuartzCore
import CoreGraphics
/// [CALayer](https://developer.apple.com/documentation/quartzcore/calayer)

public typealias Layer = CALayer

public extension CALayer {
    convenience init(backgroundColor color: CGColor) {
        self.init()
        
        background(color: color)
    }
    
    convenience init(_ configure: (CALayer) -> Void) {
        self.init()
        
        configure(self)
    }
}

public extension CALayer {
    @discardableResult
    func embed(_ closure: () -> CALayer) -> Self {
        addSublayer(closure())
        
        return self
    }
    
    @discardableResult
    func background(color: CGColor) -> Self {
        backgroundColor = color
        
        return self
    }
    
    // MARK: corners
    
    @discardableResult
    func corner(radius: CGFloat) -> Self {
        cornerRadius = radius
        
        return self
    }
    
    @discardableResult
    func masked(corners: CACornerMask) -> Self {
        maskedCorners = corners
        
        return self
    }
    
    // MARK: mask
    
    @discardableResult
    func mask(layer: CALayer?) -> Self {
        mask = layer
        
        return self
    }
    
    @discardableResult
    func mask(_ closure: () -> CALayer?) -> Self {
        mask = closure()
        
        return self
    }
    
    // MARK: border
    
    @discardableResult
    func border(width: CGFloat) -> Self {
        borderWidth = width
        
        return self
    }
    
    @discardableResult
    func border(color: CGColor?) -> Self {
        borderColor = color
        
        return self
    }
    
    // MARK: shadow
    
    @discardableResult
    func shadow(opacity: Float) -> Self {
        shadowOpacity = opacity
        
        return self
    }
    
    @discardableResult
    func shadow(radius: CGFloat) -> Self {
        shadowRadius = radius
        
        return self
    }
    
    @discardableResult
    func shadow(offset: CGSize) -> Self {
        shadowOffset = offset
        
        return self
    }
    
    @discardableResult
    func shadow(color: CGColor?) -> Self {
        shadowColor = color
        
        return self
    }
    
    @discardableResult
    func shadow(path: CGPath?) -> Self {
        shadowPath = path
        
        return self
    }
    
    // MARK: allows
    
    @discardableResult
    func allows(edgeAntialiasing: Bool) -> Self {
        allowsEdgeAntialiasing = edgeAntialiasing
        
        return self
    }
    
    @discardableResult
    func allows(groupOpacity: Bool) -> Self {
        allowsGroupOpacity = groupOpacity
        
        return self
    }
    
    // MARK: should
    
    @discardableResult
    func should(masksToBounds shouldMasksToBounds: Bool) -> Self {
        masksToBounds = shouldMasksToBounds
        
        return self
    }
    
    @discardableResult
    func should(rasterize: Bool) -> Self {
        shouldRasterize = rasterize
        
        return self
    }
    
    // MARK: is
    
    @discardableResult
    func `is`(hidden: Bool) -> Self {
        isHidden = hidden
        
        return self
    }
    
    @discardableResult
    func `is`(opaque: Bool) -> Self {
        isOpaque = opaque
        
        return self
    }
    
    @discardableResult
    func `is`(doubleSided: Bool) -> Self {
        isDoubleSided = doubleSided
        
        return self
    }
    
    @discardableResult
    func `is`(geometryFlipped: Bool) -> Self {
        isGeometryFlipped = geometryFlipped
        
        return self
    }
    
    // MARK: frame
    
    @discardableResult
    func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
        frame = CGRect(x: x, y: y, width: width, height: height)
        
        return self
    }
    
    @discardableResult
    func frame(rect: CGRect) -> Self {
        frame = rect
        
        return self
    }
    
    // MARK: configure
    
    @discardableResult
    func configure(_ closure: (CALayer) -> Void) -> Self {
        closure(self)
        
        return self
    }
}
