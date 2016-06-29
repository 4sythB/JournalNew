//
//  EntryController.swift
//  JournalNew
//
//  Created by Brad on 6/29/16.
//  Copyright © 2016 Brad. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedEntryController = EntryController()
    
    var entrys: [Entry] = []
    
    func addEntry(entry: Entry) {
        entrys.append(entry)
    }
    
    func removeEntry(entry: Entry) {
        if let index = entrys.indexOf(entry) {
            entrys.removeAtIndex(index)
        }
    }
}
