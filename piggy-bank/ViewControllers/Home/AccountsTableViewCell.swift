//
//  AccountsTableViewCell.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 29/05/2023.
//

import UIKit

class AccountsTableViewCell: UITableViewCell {

    @IBOutlet weak var container: UIView!
        
    override func awakeFromNib() {
        container.layer.cornerRadius = 10
        super.awakeFromNib()
    }

}
