//
//  ReadingListCollectionViewCell.swift
//  Bookworm
//
//  Created by Jessica Geofanie on 29/04/22.
//

import UIKit

class ReadingListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ReadingImageView: UIImageView!
    @IBOutlet weak var ReadingImage: UIImageView!
    @IBOutlet weak var ReadingTitle: UILabel!
    @IBOutlet weak var TitleReading: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        print("Reafing Controller")

    }
    func setup(with book: Book){
        print("setup")
        ReadingImageView.image = book.image
        ReadingTitle.text = book.title
        ReadingImage.image = book.image
        TitleReading.text = book.title
    }
}
