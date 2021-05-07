import UIKit

class SampleFramework {
    
    /// Create a color from a 6 digit color hexcode.
    /// - Warning: # is stripped from input.
    /// - Parameters:
    ///   - hexString: A six digit hexidecimal string.
    ///   - alpha: A number between 0.0 and 1.0 that defines the transparency. 0 is transparent.
    /// - Returns: A UIColor as defined by the hexString parameter
    class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat((hexNumber & 0x00ff00)) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
}
