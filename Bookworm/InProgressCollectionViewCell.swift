//
//  InProgressCollectionViewCell.swift
//  Bookworm
//
//  Created by Jessica Geofanie on 28/04/22.
//

import UIKit

class InProgressCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ProgressCollectionView: UIViewController!

    @IBOutlet weak var InProgressImage: UIImageView!
    @IBOutlet weak var InProgressTitle: UILabel!
    @IBOutlet weak var InProgressPercentage: UILabel!
    @IBOutlet weak var InProgressBar: UIProgressView!
    
    func setup(with book: Book){
        InProgressImage.image = book.image
        InProgressTitle.text = book.title
    }
}
