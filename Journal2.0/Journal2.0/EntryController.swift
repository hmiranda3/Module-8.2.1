//
//  EntryController.swift
//  Journal2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedController = EntryController()

    var entries: [Entry] = []
    
    func addEntry(entry: Entry) {
        entries.append(entry)
    }
    
    func removeEntry(entry: Entry) {
        if let index = entries.indexOf(entry) {
            entries.removeAtIndex(index)
        }
    }
}
