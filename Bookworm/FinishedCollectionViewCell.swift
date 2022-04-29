//
//  FinishedCollectionViewCell.swift
//  Bookworm
//
//  Created by Jessica Geofanie on 29/04/22.
//

import UIKit

class FinishedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var finishedTitle: UILabel!
    @IBOutlet weak var finishedImageView: UIImageView!
    
    func setup(with book: Book){
        finishedTitle.text = book.title
        finishedImageView.image = book.image
    }
}
