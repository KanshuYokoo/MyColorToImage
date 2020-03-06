import UIKit
import Foundation

public struct UIColorConverter {
    var rect: CGRect?
    var color: UIColor!
    
    init(from color: UIColor) {
        self.color = color
    }
    
    init(from color: UIColor, rect:CGRect) {
        self.color = color
        self.rect = rect
    }
    
    var image : UIImage? {
        if let rectsize = self.rect {
            return UIImage.from(color: self.color, rect: rectsize)
        } else {
           return UIImage.from(color: self.color)
        }
    }
    
}


