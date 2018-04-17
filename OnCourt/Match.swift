//
//  Match.swift
//  OnCourt
//
//  Created by Ian Anderson on 4/16/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit
import os.log


class Match: NSObject, NSCoding {
    
    //MARK: Properties
    var name: String
    var date: String
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("matches")
    
    //MARK: Types
    
    struct PropertyKey {
        static let name = "name"
        static let date = "date"
    }
    
    //MARK: Initialization
    
    init?(name: String, date: String) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The date must not be empty
        guard !date.isEmpty else {
            return nil
        }
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || date.isEmpty  {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.date = date
        
    }
    
    //MARK: NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(date, forKey: PropertyKey.date)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            //os_log("Unable to decode the name for a Match object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        // Because photo is an optional property of Match, just use conditional cast.
        let date = aDecoder.decodeObject(forKey: PropertyKey.date) as? String
        
        // Must call designated initializer.
        self.init(name: name, date: date!)
        
    }
}
