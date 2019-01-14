//
//  LabelCollectionViewCell.swift
//  Dynamic Label Width Collection View Demo
//
//  Created by ITRS-676 on 1/14/19.
//  Copyright © 2019 Sunday Mobility. All rights reserved.
//

import UIKit

class LabelCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewWidth: NSLayoutConstraint!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
