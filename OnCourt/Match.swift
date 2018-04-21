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
    
    //Duece Returner
    var DUFHGSW: Int = 0
    var DUFHGSFE: Int = 0
    var DUFHGSUE: Int = 0
    var DUBHGSW: Int = 0
    var DUBHGSFE: Int = 0
    var DUBHGSUE: Int = 0
    var DUFHVW: Int = 0
    var DUFHVFE: Int = 0
    var DUFHVUE: Int = 0
    var DUBHVW: Int = 0
    var DUBHVFE: Int = 0
    var DUBHVUE: Int = 0
    var DUOHW: Int = 0
    var DUOHFE: Int = 0
    var DUOHUE: Int = 0
    //AD Returner
    var ADFHGSW: Int = 0
    var ADFHGSFE: Int = 0
    var ADFHGSUE: Int = 0
    var ADBHGSW: Int = 0
    var ADBHGSFE: Int = 0
    var ADBHGSUE: Int = 0
    var ADFHVW: Int = 0
    var ADFHVFE: Int = 0
    var ADFHVUE: Int = 0
    var ADBHVW: Int = 0
    var ADBHVFE: Int = 0
    var ADBHVUE: Int = 0
    var ADOHW: Int = 0
    var ADOHFE: Int = 0
    var ADOHUE: Int = 0
    //All
    var total: Int = 0
    var notes: String = ""
    
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("matches")
    
    //MARK: Types
    
    struct PropertyKey {
        static let name = "name"
        static let date = "date"
        
        //Duece Returner
        static let DUFHGSW = "DUFHGSW"
        static let DUFHGSFE = "DUFHGSFE"
        static let DUFHGSUE = "DUFHGSUE"
        static let DUBHGSW = "DUBHGSW"
        static let DUBHGSFE = "DUBHGSFE"
        static let DUBHGSUE = "DUBHGSUE"
        static let DUFHVW = "DUFHVW"
        static let DUFHVFE = "DUFHVFE"
        static let DUFHVUE = "DUFHVUE"
        static let DUBHVW = "DUBHVW"
        static let DUBHVFE = "DUBHVFE"
        static let DUBHVUE = "DUBHVUE"
        static let DUOHW = "DUOHW"
        static let DUOHFE = "DUOHFE"
        static let DUOHUE = "DUOHUE"
        //AD Returner
        static let ADFHGSW = "ADFHGSW"
        static let ADFHGSFE = "ADFHGSFE"
        static let ADFHGSUE = "ADFHGSUE"
        static let ADBHGSW = "ADBHGSW"
        static let ADBHGSFE = "ADBHGSFE"
        static let ADBHGSUE = "ADBHGSUE"
        static let ADFHVW = "ADFHVW"
        static let ADFHVFE = "ADFHVFE"
        static let ADFHVUE = "ADFHVUE"
        static let ADBHVW = "ADBHVW"
        static let ADBHVFE = "ADBHVFE"
        static let ADBHVUE = "ADBHVUE"
        static let ADOHW = "ADOHW"
        static let ADOHFE = "ADOHFE"
        static let ADOHUE = "ADOHUE"
        //Total
        static let total = "total"
        static let notes = "notes"
    }
    
    //MARK: Initialization
    
    init?(name: String, date: String, DUFHGSW: Int, DUFHGSFE: Int, DUFHGSUE: Int, DUBHGSW: Int, DUBHGSFE: Int, DUBHGSUE: Int, DUFHVW: Int, DUFHVFE: Int, DUFHVUE: Int, DUBHVW: Int, DUBHVFE: Int, DUBHVUE: Int, DUOHW: Int, DUOHFE: Int, DUOHUE: Int, ADFHGSW: Int, ADFHGSFE: Int, ADFHGSUE: Int, ADBHGSW: Int, ADBHGSFE: Int, ADBHGSUE: Int, ADFHVW: Int, ADFHVFE: Int, ADFHVUE: Int, ADBHVW: Int, ADBHVFE: Int, ADBHVUE: Int, ADOHW: Int, ADOHFE: Int, ADOHUE: Int, total: Int, notes: String) {
        
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
        
        //Duece Returner
        self.DUFHGSW = DUFHGSW
        self.DUFHGSFE = DUFHGSFE
        self.DUFHGSUE = DUFHGSUE
        self.DUBHGSW = DUBHGSW
        self.DUBHGSFE = DUBHGSFE
        self.DUBHGSUE = DUBHGSUE
        self.DUFHVW = DUFHVW
        self.DUFHVFE = DUFHVFE
        self.DUFHVUE = DUFHVUE
        self.DUBHVW = DUBHVW
        self.DUBHVFE = DUBHVFE
        self.DUBHVUE = DUBHVUE
        self.DUOHW = DUOHW
        self.DUOHFE = DUOHFE
        self.DUOHUE = DUOHUE
        //AD Returner
        self.ADFHGSW = ADFHGSW
        self.ADFHGSFE = ADFHGSFE
        self.ADFHGSUE = ADFHGSUE
        self.ADBHGSW = ADBHGSW
        self.ADBHGSFE = ADBHGSFE
        self.ADBHGSUE = ADBHGSUE
        self.ADFHVW = ADFHVW
        self.ADFHVFE = ADFHVFE
        self.ADFHVUE = ADFHVUE
        self.ADBHVW = ADBHVW
        self.ADBHVFE = ADBHVFE
        self.ADBHVUE = ADBHVUE
        self.ADOHW = ADOHW
        self.ADOHFE = ADOHFE
        self.ADOHUE = ADOHUE
        self.total = total
        self.notes = notes
        
        
    }
    
    //MARK: NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(date, forKey: PropertyKey.date)
        
        aCoder.encode(DUFHGSW, forKey: PropertyKey.DUFHGSW)
        aCoder.encode(DUFHGSFE, forKey: PropertyKey.DUFHGSFE)
        aCoder.encode(DUFHGSUE, forKey: PropertyKey.DUFHGSUE)
        aCoder.encode(DUBHGSW, forKey: PropertyKey.DUBHGSW)
        aCoder.encode(DUBHGSFE, forKey: PropertyKey.DUBHGSFE)
        aCoder.encode(DUBHGSUE, forKey: PropertyKey.DUBHGSUE)
        aCoder.encode(DUFHVW, forKey: PropertyKey.DUFHVW)
        aCoder.encode(DUFHVFE, forKey: PropertyKey.DUFHVFE)
        aCoder.encode(DUFHVUE, forKey: PropertyKey.DUFHVUE)
        aCoder.encode(DUBHVW, forKey: PropertyKey.DUBHVW)
        aCoder.encode(DUBHVFE, forKey: PropertyKey.DUBHVFE)
        aCoder.encode(DUBHVUE, forKey: PropertyKey.DUBHVUE)
        aCoder.encode(DUOHW, forKey: PropertyKey.DUOHW)
        aCoder.encode(DUOHFE, forKey: PropertyKey.DUOHFE)
        aCoder.encode(DUOHUE, forKey: PropertyKey.DUOHUE)
        
        aCoder.encode(ADFHGSW, forKey: PropertyKey.ADFHGSW)
        aCoder.encode(ADFHGSFE, forKey: PropertyKey.ADFHGSFE)
        aCoder.encode(ADFHGSUE, forKey: PropertyKey.ADFHGSUE)
        aCoder.encode(ADBHGSW, forKey: PropertyKey.ADBHGSW)
        aCoder.encode(ADBHGSFE, forKey: PropertyKey.ADBHGSFE)
        aCoder.encode(ADBHGSUE, forKey: PropertyKey.ADBHGSUE)
        aCoder.encode(ADFHVW, forKey: PropertyKey.ADFHVW)
        aCoder.encode(ADFHVFE, forKey: PropertyKey.ADFHVFE)
        aCoder.encode(ADFHVUE, forKey: PropertyKey.ADFHVUE)
        aCoder.encode(ADBHVW, forKey: PropertyKey.ADBHVW)
        aCoder.encode(ADBHVFE, forKey: PropertyKey.ADBHVFE)
        aCoder.encode(ADBHVUE, forKey: PropertyKey.ADBHVUE)
        aCoder.encode(ADOHW, forKey: PropertyKey.ADOHW)
        aCoder.encode(ADOHFE, forKey: PropertyKey.ADOHFE)
        aCoder.encode(ADOHUE, forKey: PropertyKey.ADOHUE)
        aCoder.encode(total, forKey: PropertyKey.total)
        aCoder.encode(notes, forKey: PropertyKey.notes)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            //os_log("Unable to decode the name for a Match object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        // Because photo is an optional property of Match, just use conditional cast.
        let date = aDecoder.decodeObject(forKey: PropertyKey.date) as? String
        
        let DUFHGSW = aDecoder.decodeInteger(forKey: PropertyKey.DUFHGSW)
        let DUFHGSFE = aDecoder.decodeInteger(forKey: PropertyKey.DUFHGSFE)
        let DUFHGSUE = aDecoder.decodeInteger(forKey: PropertyKey.DUFHGSUE)
        let DUBHGSW = aDecoder.decodeInteger(forKey: PropertyKey.DUBHGSW)
        let DUBHGSFE = aDecoder.decodeInteger(forKey: PropertyKey.DUBHGSFE)
        let DUBHGSUE = aDecoder.decodeInteger(forKey: PropertyKey.DUBHGSUE)
        let DUFHVW = aDecoder.decodeInteger(forKey: PropertyKey.DUFHVW)
        let DUFHVFE = aDecoder.decodeInteger(forKey: PropertyKey.DUFHVFE)
        let DUFHVUE = aDecoder.decodeInteger(forKey: PropertyKey.DUFHVUE)
        let DUBHVW = aDecoder.decodeInteger(forKey: PropertyKey.DUBHVW)
        let DUBHVFE = aDecoder.decodeInteger(forKey: PropertyKey.DUBHVFE)
        let DUBHVUE = aDecoder.decodeInteger(forKey: PropertyKey.DUBHVUE)
        let DUOHW = aDecoder.decodeInteger(forKey: PropertyKey.DUOHW)
        let DUOHFE = aDecoder.decodeInteger(forKey: PropertyKey.DUOHFE)
        let DUOHUE = aDecoder.decodeInteger(forKey: PropertyKey.DUOHUE)
        
        let ADFHGSW = aDecoder.decodeInteger(forKey: PropertyKey.ADFHGSW)
        let ADFHGSFE = aDecoder.decodeInteger(forKey: PropertyKey.ADFHGSFE)
        let ADFHGSUE = aDecoder.decodeInteger(forKey: PropertyKey.ADFHGSUE)
        let ADBHGSW = aDecoder.decodeInteger(forKey: PropertyKey.ADBHGSW)
        let ADBHGSFE = aDecoder.decodeInteger(forKey: PropertyKey.ADBHGSFE)
        let ADBHGSUE = aDecoder.decodeInteger(forKey: PropertyKey.ADBHGSUE)
        let ADFHVW = aDecoder.decodeInteger(forKey: PropertyKey.ADFHVW)
        let ADFHVFE = aDecoder.decodeInteger(forKey: PropertyKey.ADFHVFE)
        let ADFHVUE = aDecoder.decodeInteger(forKey: PropertyKey.ADFHVUE)
        let ADBHVW = aDecoder.decodeInteger(forKey: PropertyKey.ADBHVW)
        let ADBHVFE = aDecoder.decodeInteger(forKey: PropertyKey.ADBHVFE)
        let ADBHVUE = aDecoder.decodeInteger(forKey: PropertyKey.ADBHVUE)
        let ADOHW = aDecoder.decodeInteger(forKey: PropertyKey.ADOHW)
        let ADOHFE = aDecoder.decodeInteger(forKey: PropertyKey.ADOHFE)
        let ADOHUE = aDecoder.decodeInteger(forKey: PropertyKey.ADOHUE)
        let total = aDecoder.decodeInteger(forKey: PropertyKey.total)
        guard let notes = aDecoder.decodeObject(forKey: PropertyKey.notes) as? String else{
            return nil
        }
        
        // Must call designated initializer.
        self.init(name: name, date: date!, DUFHGSW: DUFHGSW, DUFHGSFE: DUFHGSFE, DUFHGSUE: DUFHGSUE, DUBHGSW: DUBHGSW, DUBHGSFE: DUBHGSFE, DUBHGSUE: DUBHGSUE, DUFHVW: DUFHVW, DUFHVFE: DUFHVFE, DUFHVUE: DUFHVUE, DUBHVW: DUBHVW, DUBHVFE: DUBHVFE, DUBHVUE: DUBHVUE, DUOHW: DUOHW, DUOHFE: DUOHFE, DUOHUE: DUOHUE, ADFHGSW: ADFHGSW, ADFHGSFE: ADFHGSFE, ADFHGSUE: ADFHGSUE, ADBHGSW: ADBHGSW, ADBHGSFE: ADBHGSFE, ADBHGSUE: ADBHGSUE, ADFHVW: ADFHVW, ADFHVFE: ADFHVFE, ADFHVUE: ADFHVUE, ADBHVW: ADBHVW, ADBHVFE: ADBHVFE, ADBHVUE: ADBHVUE, ADOHW: ADOHW, ADOHFE: ADOHFE, ADOHUE: ADOHUE, total: total, notes: notes)
        
    }
}
