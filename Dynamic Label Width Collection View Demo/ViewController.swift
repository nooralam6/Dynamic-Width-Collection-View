//
//  ViewController.swift
//  Dynamic Label Width Collection View Demo
//
//  Created by ITRS-676 on 1/14/19.
//  Copyright © 2019 Sunday Mobility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameCollectionView: UICollectionView!
    
    var names = ["Jack", "Sparrow", "Giants", "Work"]
    var widthSizes = [CGFloat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameCollectionView.register(UINib(nibName: "LabelCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        for i in 0..<names.count {
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 17)
            label.text = names[i]
            widthSizes.append(label.intrinsicContentSize.width)
            print(widthSizes)
        }
        nameCollectionView.setNeedsLayout()
//        nameCollectionView.reloadData()
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LabelCollectionViewCell
        cell.nameLabel.text = names[indexPath.row]
//        cell.viewWidth.constant = widthSizes[indexPath.row]
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: widthSizes[indexPath.row] + 40, height: 65)
    }

}
