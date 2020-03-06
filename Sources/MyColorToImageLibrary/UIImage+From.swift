
//Kanshu.yokoo

import UIKit
import Foundation
extension UIImage {
    static func from(color: UIColor, rect:CGRect = CGRect(x: 0, y: 0, width: 1, height: 1)) -> UIImage? {
        
        UIGraphicsBeginImageContext(rect.size)
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(rect)
        }
        
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
    
    
}
