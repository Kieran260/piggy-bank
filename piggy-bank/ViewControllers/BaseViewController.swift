//
//  BaseViewController.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit

// Class which all main screen view controllers will inherit shared attributes
class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImage = UIImageView(frame: self.view.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        backgroundImage.autoresizingMask = [.flexibleWidth, .flexibleHeight]

        self.view.insertSubview(backgroundImage, at: 0)
    }
}

