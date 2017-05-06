//
//  DetailEventViewController.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/6/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import UIKit

class DetailEventViewController: UIViewController {
    
    @IBOutlet weak var dayImage: UIImageView!
    @IBOutlet weak var dayNameLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.title = "Event"
        // Do any additional setup after loading the view.
    }
    
    func didSet(dayEvent: DayEvent, event: Event) {
        dayNameLabel.text = dayEvent.dayImageName
        dayImage.image = UIImage(named: dayEvent.dayImageName)
        titleTextField.text = event.title
        contentTextView.text = event.content
    }
    

}
