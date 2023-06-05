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

    @IBOutlet weak var mainTabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainTabBar.backgroundColor = DarkTheme.backgroundColor
        
        // Set selected tab bar item color
        let hexColor = DarkTheme.primaryColor
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: hexColor], for: .selected)
    

        if let homeIcon = UIImage(named: "home-solid") {
            let resizedImage = homeIcon.resizeImage(targetSize: CGSize(width: 25, height: 25)).withRenderingMode(.alwaysTemplate)
                        
            self.viewControllers?[0].tabBarItem.image = resizedImage
        }
        
        if let homeIcon = UIImage(named: "wallet-solid") {
            let resizedImage = homeIcon.resizeImage(targetSize: CGSize(width: 25, height: 25)).withRenderingMode(.alwaysTemplate)
                        
            self.viewControllers?[1].tabBarItem.image = resizedImage
        }
        
        if let homeIcon = UIImage(named: "comment-dollar-solid") {
            let resizedImage = homeIcon.resizeImage(targetSize: CGSize(width: 25, height: 25)).withRenderingMode(.alwaysTemplate)
                        
            self.viewControllers?[2].tabBarItem.image = resizedImage
        }
        
        if let homeIcon = UIImage(named: "chart-bar-solid") {
            let resizedImage = homeIcon.resizeImage(targetSize: CGSize(width: 25, height: 25)).withRenderingMode(.alwaysTemplate)
                        
            self.viewControllers?[3].tabBarItem.image = resizedImage
        }
        
        if let homeIcon = UIImage(named: "user-circle-solid") {
            let resizedImage = homeIcon.resizeImage(targetSize: CGSize(width: 25, height: 25)).withRenderingMode(.alwaysTemplate)
                        
            self.viewControllers?[4].tabBarItem.image = resizedImage
        }
        
        self.tabBar.unselectedItemTintColor = UIColor.white.withAlphaComponent(0.5)

        let tabBarTopBorder = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.frame.width, height: 0.5))
        tabBarTopBorder.backgroundColor = UIColor.gray
        tabBar.addSubview(tabBarTopBorder)
    }

}



extension UIImage {
    func resizeImage(targetSize: CGSize) -> UIImage {
        let size = self.size

        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height

        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }

        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)

        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage!
    }
}
