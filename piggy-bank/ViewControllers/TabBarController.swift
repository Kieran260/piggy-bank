//
//  TabBarController.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit



class TabBarController: UITabBarController {
    var tabBarImage: UIImageView!
    var gradientView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()



        // Set selected tab bar item color
        let hexColor = UIColor(rgb: 0x00FFB3)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: hexColor], for: .selected)
        
        
        // Create a UIImageView with the same size as your view
        let backgroundImage = UIImageView(frame: self.view.bounds)
        
        // Set the image of the UIImageView
        backgroundImage.image = UIImage(named: "background")
        
        // Ensure the image resizes when the view's bounds change
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        backgroundImage.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Insert the UIImageView at the bottom of the view hierarchy
        self.view.insertSubview(backgroundImage, at: 1)

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
