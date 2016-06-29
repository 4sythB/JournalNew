//
//  Entry.swift
//  JournalNew
//
//  Created by Brad on 6/29/16.
//  Copyright © 2016 Brad. All rights reserved.
//

import Foundation

class Entry: NSObject, NSCoding {
    // MARK: Properties
    
    let timeStamp: NSDate
    let title: String
    let bodyText: String
    
    struct PropertyKey {
        static let timeStampKey = "timeStamp"
        static let titleKey = "title"
        static let bodyTextKey = "bodyText"
    }
    
    init(timeStamp: NSDate = NSDate(), title: String, bodyText: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
    
    // MARK: NSCoding
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(timeStamp, forKey: PropertyKey.timeStampKey)
        aCoder.encodeObject(title, forKey: PropertyKey.titleKey)
        aCoder.encodeObject(bodyText, forKey: PropertyKey.bodyTextKey)
    }
    
    // MARK: NSCoding Initialization
    
    required convenience init?(coder aDecoder: NSCoder) {
        let timeStamp = aDecoder.decodeObjectForKey(PropertyKey.timeStampKey) as! NSDate
        let title = aDecoder.decodeObjectForKey(PropertyKey.titleKey) as! String
        let bodyText = aDecoder.decodeObjectForKey(PropertyKey.bodyTextKey) as! String
        
        self.init(timeStamp: timeStamp, title: title, bodyText: bodyText)
    }
}

func ==(lhs: Entry, rhs: Entry) -> Bool {
    return lhs.timeStamp == rhs.timeStamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
}
