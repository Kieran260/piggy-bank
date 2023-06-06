//
//  AccountCell.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 06/06/2023.
//

import UIKit

class AccountCell: UITableViewCell {
    
    static let identifier = "accountCell"
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let imageContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let cardImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .lightGray
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let spacerViewTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let spacerViewBottom: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let accountName: UILabel = {
        let label = UILabel()
        label.text = "Everyday Spending"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let accountType: UILabel = {
        let label = UILabel()
        label.text = "Current Account"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let accountBalance: UILabel = {
        let label = UILabel()
        label.text = "£ 10,000"
        label.textColor = .white
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: Initialisation
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(stackView)
        imageContainer.addSubview(cardImage)
        stackView.addArrangedSubview(imageContainer)
        stackView.addArrangedSubview(labelStackView)
        stackView.addArrangedSubview(accountBalance)
        
        labelStackView.addArrangedSubview(spacerViewTop)
        labelStackView.addArrangedSubview(accountName)
        labelStackView.addArrangedSubview(accountType)
        labelStackView.addArrangedSubview(spacerViewBottom)
        
        NSLayoutConstraint.activate([
            spacerViewTop.heightAnchor.constraint(equalTo: spacerViewBottom.heightAnchor),
            cardImage.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
            cardImage.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor),
            cardImage.widthAnchor.constraint(equalToConstant: 40),
            cardImage.heightAnchor.constraint(equalToConstant: 40),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            labelStackView.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.5),
            accountBalance.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: 0.3)
        ])
        
        
        stackView.backgroundColor = .clear
        self.backgroundColor = .clear
    }


    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        // Reset the cell's content if needed
    }
}
