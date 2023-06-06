//
//  BankCardCollectionViewCell.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit

class BankCardCollectionViewCell: UICollectionViewCell {
    
    // MARK: Declarations
    
    var card: UIView!
    var cardBackground: UIImageView!
    
    // MARK: Initialisation
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCard()
        setupBackground()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupCard()
        setupBackground()
    }
    
    func setupCard() {
        card = UIView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.layer.cornerRadius = 10
        contentView.addSubview(card)
        
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            card.widthAnchor.constraint(equalToConstant: 270),
            card.heightAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func setupBackground() {
        cardBackground = UIImageView()
        cardBackground.contentMode = .scaleAspectFill
        cardBackground.clipsToBounds = true
        cardBackground.layer.cornerRadius = 10
        cardBackground.translatesAutoresizingMaskIntoConstraints = false
        
        card.addSubview(cardBackground)
        
        NSLayoutConstraint.activate([
            cardBackground.topAnchor.constraint(equalTo: card.topAnchor),
            cardBackground.bottomAnchor.constraint(equalTo: card.bottomAnchor),
            cardBackground.leadingAnchor.constraint(equalTo: card.leadingAnchor),
            cardBackground.trailingAnchor.constraint(equalTo: card.trailingAnchor),
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
