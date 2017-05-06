//
//  EventCell.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/5/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func didSet(event: Event) {
        contentLabel.text = event.content
        titleLabel.text = event.title
    }
}
