//
//  BankCardCollectionViewCell.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit

class BankCardCollectionViewCell: UICollectionViewCell {
    
    var card: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        card = UIView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.backgroundColor = .systemOrange
        contentView.addSubview(card)
        
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            card.widthAnchor.constraint(equalToConstant: 300),
            card.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
