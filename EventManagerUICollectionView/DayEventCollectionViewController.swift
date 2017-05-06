//
//  DayEventCollectionViewController.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/5/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import UIKit

private let reuseIdentifier = "EventCell"

class DayEventCollectionViewController: UICollectionViewController {

    // MARK: - Data Source
    var eventAdapter = EventAdapter()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        //self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        collectionView?.reloadData()
    }
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            
            switch identifier {
            case "ShowDetail":
                
                let detailEvent = segue.destination as! DetailEventViewController
                if let indexPath = self.collectionView!.indexPath(for: sender as! EventCell) {
                    let dayEvent = eventAdapter.dayEvents[indexPath.section]
                    let event = dayEvent.events[indexPath.row]
                    detailEvent.setAdapter(dayEvent: dayEvent, event: event)
                }
             case "AddEvent":
                let addEvent = segue.destination as! AddEventViewController
                addEvent.setAdapter(eventAdapter: eventAdapter)
            default:
                break
            }
        }
    }
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventAdapter.dayEvents.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        let dayEvent = eventAdapter.dayEvents[section]
        return dayEvent.events.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! EventCell
        let event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
        cell.didSet(event: event)
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "HeaderView", for: indexPath) as! HeaderView
        let dayEvent = eventAdapter.dayEvents[indexPath.section]
        headerView.didSet(dayEvent: dayEvent)
        return headerView
    }
    
    // MARK: - Get event method
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event {
        
        let dayEvent = eventAdapter.dayEvents[indexPath.section]
        return dayEvent.events[indexPath.row]
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
