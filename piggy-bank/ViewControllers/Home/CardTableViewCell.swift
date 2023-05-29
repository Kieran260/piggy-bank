//
//  CardTableViewCell.swift
//  piggy-bank
//
//  Created by Kieran Hardwick on 27/05/2023.
//

import UIKit
import CollectionViewPagingLayout

class CardTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    private let layout = CollectionViewPagingLayout()

    override func awakeFromNib() {
        super.awakeFromNib()

        configureCollectionView()
    }

    private func configureCollectionView() {
        collectionView.register(BankCardCollectionViewCell.self, forCellWithReuseIdentifier: "BankCardCell")
        collectionView.isPagingEnabled = true
        collectionView.dataSource = self
        layout.numberOfVisibleItems = 7
        layout.scrollDirection = .horizontal
        layout.transparentAttributeWhenCellNotLoaded = true
        collectionView.collectionViewLayout = layout
        collectionView.showsVerticalScrollIndicator = false
        collectionView.clipsToBounds = false
        collectionView.backgroundColor = .clear
        collectionView.scrollsToTop = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BankCardCell", for: indexPath) as! BankCardCollectionViewCell
        
        return cell
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension BankCardCollectionViewCell: ScaleTransformView {
    var scaleOptions: ScaleTransformViewOptions {
        ScaleTransformViewOptions(
            minScale: 0.6,
            scaleRatio: 0.4,
            translationRatio: CGPoint(x: 0.66, y: 0.2),
            maxTranslationRatio: CGPoint(x: 2, y: 0)
            )
    }
}
