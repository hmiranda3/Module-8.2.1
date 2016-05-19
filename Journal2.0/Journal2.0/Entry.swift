//
//  Entry.swift
//  Journal2.0
//
//  Created by Habib Miranda on 5/18/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class Entry: Equatable {
    
    //need a little clarity about when to use var vs let
    var timeStamp: NSDate
    var title: String
    var bodyText: String
    
    init(timeStamp: NSDate, title: String, bodyText: String) {
        self.timeStamp = timeStamp
        self.title = title
        self.bodyText = bodyText
    }
}

func ==(lhs: Entry, rhs: Entry)-> Bool {
    return lhs.timeStamp == rhs.timeStamp && lhs.title == rhs.title && lhs.bodyText == rhs.bodyText
}