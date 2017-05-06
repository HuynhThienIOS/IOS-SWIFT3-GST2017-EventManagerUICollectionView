//
//  DayEvent.swift
//  EventManagerUICollectionView
//
//  Created by Thiện Huỳnh on 5/5/17.
//  Copyright © 2017 Thiện Huỳnh. All rights reserved.
//

import Foundation

class DayEvent {
    
    // Variables
    var dayImageName: String     // day of week
    var events: [Event]  // all event of one day
    init(day: String, events: [Event]) {
        self.dayImageName = day
        self.events = events
    }
    
    class func dayEvents() -> [DayEvent] {
        return [self.monday(), self.tuesday(), self.wednesday(), self.thursday(), self.friday(), self.saturday(), self.sunday()]
    }
    
    // Private methods
    
    private class func monday() -> DayEvent {
        
        var events = [Event]()
        
        events.append(Event(title: "Bảo mật thông tin", content: "Làm bài lab"))
        events.append(Event(title: "Học tiếng Anh", content: "Luyện nghe trang 45-50"))
        return DayEvent(day: "Monday", events: events)
    }
    
    private class func tuesday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "OOAD", content: "Coi design pattern"))
        events.append(Event(title: "Cloud Computing", content: "Deploy Google Cloud"))
        events.append(Event(title: "Học tiếng Anh", content: "Luyện đọc trang 69-96"))
        events.append(Event(title: "Review IOS", content: "Coi lại bài cũ"))
        return DayEvent(day: "Tuesday", events: events)
    }
    private class func wednesday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "Học IOS", content: "Assignment"))
        events.append(Event(title: "Học tiếng Anh", content: "Luyện ngữ pháp trang 45-50"))
        events.append(Event(title: "Cày rank", content: "giải trí thôi"))
        events.append(Event(title: "Học adobe muse", content: "Làm tiếp bài cũ"))
        events.append(Event(title: "Blablabla", content: "Blablabla"))
        events.append(Event(title: "Blablabla", content: "Blablabla"))
        return DayEvent(day: "Wednesday", events: events)
    }
    private class func thursday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "AAOO", content: "AAAAAAAAOOOOOOOOOOOO"))
        events.append(Event(title: "BBCC", content: "BBBBBBBBBCCCCCCCC"))
        return DayEvent(day: "Thursday", events: events)
    }
    private class func friday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "OOONNNN", content: "OOOOOONNNNNNNN"))
        events.append(Event(title: "GG", content: "SURRENDER"))
        events.append(Event(title: "AD", content: "Attack damage"))
        return DayEvent(day: "Friday", events: events)
    }
    private class func saturday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "Học IOS", content: "Làm bài quiz"))
        events.append(Event(title: "Học Bảo mật web", content: "Làm đồ án"))
        return DayEvent(day: "Saturday", events: events)
    }
    private class func sunday() -> DayEvent {
        var events = [Event]()
        
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        events.append(Event(title: "Quẩy", content: "Quẩy"))
        return DayEvent(day: "Sunday", events: events)
    }
}
