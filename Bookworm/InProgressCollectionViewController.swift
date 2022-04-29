//
//  InProgressCollectionViewController.swift
//  Bookworm
//
//  Created by Jessica Geofanie on 28/04/22.
//

import UIKit

class InProgressCollectionViewController: UIViewController{
 
    
    @IBOutlet weak var ReadingListCollectionView: UICollectionView!
    @IBOutlet weak var InProgressCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        InProgressCollectionView.dataSource = self
        InProgressCollectionView.delegate = self
        InProgressCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        self.InProgressCollectionView.collectionViewLayout = layout
//        InProgressCollectionView.
        ReadingListCollectionView.dataSource = self
        ReadingListCollectionView.delegate = self
        ReadingListCollectionView.collectionViewLayout = UICollectionViewLayout()
        // Do any additional setup after loading the view.
        

      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        ReadingListCollectionView.reloadData()
    }


}

extension InProgressCollectionViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return book.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = InProgressCollectionView.dequeueReusableCell(withReuseIdentifier: "InProgressCollectionViewCell", for: indexPath) as! InProgressCollectionViewCell
        cell.setup(with: book[indexPath.row])
        
//        if let collection_ == collectionView as? ReadingListCollectionView{
//            let cell2 = ReadingListCollectionView.dequeueReusableCell(withReuseIdentifier: "ReadingListCollectionViewCell", for: indexPath) as! ReadingListCollectionViewCell
//            cell2.setup(with: book[indexPath.row])
//
//            return cell2
//        }
        if collectionView == ReadingListCollectionView {
            let cell2 = ReadingListCollectionView.dequeueReusableCell(withReuseIdentifier: "ReadingListCollectionViewCell", for: indexPath) as! ReadingListCollectionViewCell
            cell2.setup(with: book[indexPath.row])

            return cell2
        }
        
        return cell
    }
    
}

extension InProgressCollectionViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
//        collectionViewLayout.scroll
//        layout.scrollDirection = .horizontal
        return CGSize(width: 90, height: 190)
    }
}

//extension InProgressCollectionViewController:UICollectionViewLayout{
//
//}

extension InProgressCollectionViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(book[indexPath.row].title)
    }
}
