//
//  HeaderView.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/5/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
    @IBOutlet weak var dayImage: UIImageView!
    @IBOutlet weak var dayName: UILabel!
    
    func didSet(dayEvent: DayEvent) {
        dayImage.image = UIImage(named: dayEvent.dayImageName)
        dayName.text = dayEvent.dayImageName
    }
}
