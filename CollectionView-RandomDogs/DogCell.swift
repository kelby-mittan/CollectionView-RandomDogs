//
//  DogCell.swift
//  CollectionView-RandomDogs
//
//  Created by Kelby Mittan on 1/14/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit
import ImageKit

class DogCell: UICollectionViewCell {
    
    @IBOutlet var dogImageView: UIImageView!
    
    public func configureCell(with dogImage: DogImage) {
        dogImageView.getImage(with: dogImage) { [weak self] (result) in
            switch result {
            case .failure:
                DispatchQueue.main.async {
                    self?.dogImageView.image = UIImage(systemName: "exclamationmark-triangle")
                }
                case .success(let image):
                DispatchQueue.main.async {
                    self?.dogImageView.image = image
                }
            }
        }
    }
    
}
