//
//  EventAdapter.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/6/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import Foundation

class EventAdapter {
    // MARK: - Data Source
    var dayEvents : [DayEvent] = {
        return DayEvent.dayEvents()
    }()
}
