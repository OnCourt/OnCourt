//
//  StatsViewController.swift
//  TennisTracker
//
//  Created by Ian Anderson on 5/11/17.
//  Copyright © 2017 Ian Anderson. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    
    var match: Match?
    //IBOutlets
    @IBOutlet weak var DULabel: UILabel!
    @IBOutlet weak var ADLabel: UILabel!
    @IBOutlet weak var SaveButton: UIButton!
    @IBOutlet weak var ClearButton: UIButton!
    
    //IBOutlets for colletion cells
    @IBOutlet weak var DUFHGSWLabel: StatsLabel!
    @IBOutlet weak var DUFHGSFELabel: StatsLabel!
    @IBOutlet weak var DUFHGSUELabel: StatsLabel!
    @IBOutlet weak var ADFHGSWLabel: StatsLabel!
    @IBOutlet weak var ADFHGSFELabel: StatsLabel!
    @IBOutlet weak var ADFHGSUELabel: StatsLabel!
    @IBOutlet weak var DUBHGSWLabel: StatsLabel!
    @IBOutlet weak var DUBHGSFELabel: StatsLabel!
    @IBOutlet weak var DUBHGSEULabel: StatsLabel!
    @IBOutlet weak var ADBHGSWLabel: StatsLabel!
    @IBOutlet weak var ADBHGSFELabel: StatsLabel!
    @IBOutlet weak var ADBHGSUELabel: StatsLabel!
    @IBOutlet weak var DUFHVWLabel: StatsLabel!
    @IBOutlet weak var DUFHVFELabel: StatsLabel!
    @IBOutlet weak var DUFHVUELabel: StatsLabel!
    @IBOutlet weak var ADFHVWLabel: StatsLabel!
    @IBOutlet weak var ADFHVFELabel: StatsLabel!
    @IBOutlet weak var ADFHVUELabel: StatsLabel!
    @IBOutlet weak var DUBHVWLabel: StatsLabel!
    @IBOutlet weak var DUBHVFELabel: StatsLabel!
    @IBOutlet weak var DUBHVUELabel: StatsLabel!
    @IBOutlet weak var ADBHVWLabel: StatsLabel!
    @IBOutlet weak var ADBHVFELabel: StatsLabel!
    @IBOutlet weak var ADBHVUELabel: StatsLabel!
    @IBOutlet weak var DUOHWLabel: StatsLabel!
    @IBOutlet weak var DUOHFELabel: StatsLabel!
    @IBOutlet weak var DUOHUELabel: StatsLabel!
    @IBOutlet weak var ADOHWLabel: StatsLabel!
    @IBOutlet weak var ADOHFELabel: StatsLabel!
    @IBOutlet weak var ADOHUELabel: StatsLabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor(red: 2/255, green: 151/255, blue: 219/255, alpha: 1.0)
        
        //Round Corners
        DULabel.layer.masksToBounds=true
        DULabel.layer.cornerRadius=4
        
        ADLabel.layer.masksToBounds=true
        ADLabel.layer.cornerRadius=4
        SaveButton.layer.cornerRadius = 4
        ClearButton.layer.cornerRadius = 4
        
        DUFHGSWLabel.updateStat(value: Variables.DUFHGSW, total: Variables.total)
        DUFHGSFELabel.updateStat(value: Variables.DUFHGSFE, total: Variables.total)
        DUFHGSUELabel.updateStat(value: Variables.DUFHGSUE, total: Variables.total)
        ADFHGSWLabel.updateStat(value: Variables.ADFHGSW, total: Variables.total)
        ADFHGSFELabel.updateStat(value: Variables.ADFHGSFE, total: Variables.total)
        ADFHGSUELabel.updateStat(value: Variables.ADFHGSUE, total: Variables.total)
        DUBHGSWLabel.updateStat(value: Variables.DUBHGSW, total: Variables.total)
        DUBHGSFELabel.updateStat(value: Variables.DUBHGSFE, total: Variables.total)
        DUBHGSEULabel.updateStat(value: Variables.DUBHGSUE, total: Variables.total)
        ADBHGSWLabel.updateStat(value: Variables.ADBHGSW, total: Variables.total)
        ADBHGSFELabel.updateStat(value: Variables.ADBHGSFE, total: Variables.total)
        ADBHGSUELabel.updateStat(value: Variables.ADBHGSUE, total: Variables.total)
        DUFHVWLabel.updateStat(value: Variables.DUFHVW, total: Variables.total)
        DUFHVFELabel.updateStat(value: Variables.DUFHVFE, total: Variables.total)
        DUFHVUELabel.updateStat(value: Variables.DUFHVUE, total: Variables.total)
        ADFHVWLabel.updateStat(value: Variables.ADFHVW, total: Variables.total)
        ADFHVFELabel.updateStat(value: Variables.ADFHVFE, total: Variables.total)
        ADFHVUELabel.updateStat(value: Variables.ADFHVUE, total: Variables.total)
        DUBHVWLabel.updateStat(value: Variables.DUBHVW, total: Variables.total)
        DUBHVFELabel.updateStat(value: Variables.DUBHVFE, total: Variables.total)
        DUBHVUELabel.updateStat(value: Variables.DUBHVUE, total: Variables.total)
        ADBHVWLabel.updateStat(value: Variables.ADBHVW, total: Variables.total)
        ADBHVFELabel.updateStat(value: Variables.ADBHVFE, total: Variables.total)
        ADBHVUELabel.updateStat(value: Variables.ADBHVUE, total: Variables.total)
        DUOHWLabel.updateStat(value: Variables.DUOHW, total: Variables.total)
        DUOHFELabel.updateStat(value: Variables.DUOHUE, total: Variables.total)
        DUOHUELabel.updateStat(value: Variables.DUOHUE, total: Variables.total)
        ADOHWLabel.updateStat(value: Variables.ADOHW, total: Variables.total)
        ADOHFELabel.updateStat(value: Variables.ADOHFE, total: Variables.total)
        ADOHUELabel.updateStat(value: Variables.ADOHUE, total: Variables.total)
        
        guard let savematch = Match(name: "No-name", date: "No-date", DUFHGSW: Variables.DUFHGSW, DUFHGSFE: Variables.DUFHGSFE, DUFHGSUE: Variables.DUFHGSUE, DUBHGSW: Variables.DUBHGSW, DUBHGSFE: Variables.DUBHGSFE, DUBHGSUE: Variables.DUBHGSUE, DUFHVW: Variables.DUFHVW, DUFHVFE: Variables.DUFHVFE, DUFHVUE: Variables.DUFHVUE, DUBHVW: Variables.DUBHVW, DUBHVFE: Variables.DUBHVFE, DUBHVUE: Variables.DUBHVUE, DUOHW: Variables.DUOHW, DUOHFE: Variables.DUOHUE, DUOHUE: Variables.DUOHUE, ADFHGSW: Variables.ADFHGSW, ADFHGSFE: Variables.ADFHGSFE, ADFHGSUE: Variables.ADFHGSUE, ADBHGSW: Variables.ADBHGSW, ADBHGSFE: Variables.ADBHGSFE, ADBHGSUE: Variables.ADBHGSUE, ADFHVW: Variables.ADFHVW, ADFHVFE: Variables.ADFHVFE, ADFHVUE: Variables.ADFHVUE, ADBHVW: Variables.ADBHVW, ADBHVFE: Variables.ADBHVFE, ADBHVUE: Variables.ADBHVUE, ADOHW: Variables.ADOHW, ADOHFE: Variables.ADOHFE, ADOHUE: Variables.ADOHUE, total: Variables.total, notes: "")
            else{
                fatalError("Unable to save match")
        }
        match = savematch
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveMatch(_ sender: Any) {
        guard let savematch = Match(name: "No-name", date: "No-date", DUFHGSW: Variables.DUFHGSW, DUFHGSFE: Variables.DUFHGSFE, DUFHGSUE: Variables.DUFHGSUE, DUBHGSW: Variables.DUBHGSW, DUBHGSFE: Variables.DUBHGSFE, DUBHGSUE: Variables.DUBHGSUE, DUFHVW: Variables.DUFHVW, DUFHVFE: Variables.DUFHVFE, DUFHVUE: Variables.DUFHVUE, DUBHVW: Variables.DUBHVW, DUBHVFE: Variables.DUBHVFE, DUBHVUE: Variables.DUBHVUE, DUOHW: Variables.DUOHW, DUOHFE: Variables.DUOHUE, DUOHUE: Variables.DUOHUE, ADFHGSW: Variables.ADFHGSW, ADFHGSFE: Variables.ADFHGSFE, ADFHGSUE: Variables.ADFHGSUE, ADBHGSW: Variables.ADBHGSW, ADBHGSFE: Variables.ADBHGSFE, ADBHGSUE: Variables.ADBHGSUE, ADFHVW: Variables.ADFHVW, ADFHVFE: Variables.ADFHVFE, ADFHVUE: Variables.ADFHVUE, ADBHVW: Variables.ADBHVW, ADBHVFE: Variables.ADBHVFE, ADBHVUE: Variables.ADBHVUE, ADOHW: Variables.ADOHW, ADOHFE: Variables.ADOHFE, ADOHUE: Variables.ADOHUE, total: Variables.total, notes: "")
            else{
                fatalError("Unable to save match")
        }
        match = savematch
        //structMatches.matches += [savematch]
        
    }
    
    @IBAction func clearStats(_ sender: Any) {
        DUFHGSWLabel.updateStat(value: 0, total: 0)
        DUFHGSFELabel.updateStat(value: 0, total: 0)
        DUFHGSUELabel.updateStat(value: 0, total: 0)
        ADFHGSWLabel.updateStat(value: 0, total: 0)
        ADFHGSFELabel.updateStat(value: 0, total: 0)
        ADFHGSUELabel.updateStat(value: 0, total: 0)
        DUBHGSWLabel.updateStat(value: 0, total: 0)
        DUBHGSFELabel.updateStat(value: 0, total: 0)
        DUBHGSEULabel.updateStat(value: 0, total: 0)
        ADBHGSWLabel.updateStat(value: 0, total: 0)
        ADBHGSFELabel.updateStat(value: 0, total: 0)
        ADBHGSUELabel.updateStat(value: 0, total: 0)
        DUFHVWLabel.updateStat(value: 0, total: 0)
        DUFHVFELabel.updateStat(value: 0, total: 0)
        DUFHVUELabel.updateStat(value: 0, total: 0)
        ADFHVWLabel.updateStat(value: 0, total: 0)
        ADFHVFELabel.updateStat(value: 0, total: 0)
        ADFHVUELabel.updateStat(value: 0, total: 0)
        DUBHVWLabel.updateStat(value: 0, total: 0)
        DUBHVFELabel.updateStat(value: 0, total: 0)
        DUBHVUELabel.updateStat(value: 0, total: 0)
        ADBHVWLabel.updateStat(value: 0, total: 0)
        ADBHVFELabel.updateStat(value: 0, total: 0)
        ADBHVUELabel.updateStat(value: 0, total: 0)
        DUOHWLabel.updateStat(value: 0, total: 0)
        DUOHFELabel.updateStat(value: 0, total: 0)
        DUOHUELabel.updateStat(value: 0, total: 0)
        ADOHWLabel.updateStat(value: 0, total: 0)
        ADOHFELabel.updateStat(value: 0, total: 0)
        ADOHUELabel.updateStat(value: 0, total: 0)
        
        Variables.DUFHGSW = 0
        Variables.DUFHGSFE = 0
        Variables.DUFHGSUE = 0
        Variables.DUBHGSW = 0
        Variables.DUBHGSFE = 0
        Variables.DUBHGSUE = 0
        Variables.DUFHVW = 0
        Variables.DUFHVFE = 0
        Variables.DUFHVUE = 0
        Variables.DUBHVW = 0
        Variables.DUBHVFE = 0
        Variables.DUBHVUE = 0
        Variables.DUOHW = 0
        Variables.DUOHFE = 0
        Variables.DUOHUE = 0
        //AD Returner
        Variables.ADFHGSW = 0
        Variables.ADFHGSFE = 0
        Variables.ADFHGSUE = 0
        Variables.ADBHGSW = 0
        Variables.ADBHGSFE = 0
        Variables.ADBHGSUE = 0
        Variables.ADFHVW = 0
        Variables.ADFHVFE = 0
        Variables.ADFHVUE = 0
        Variables.ADBHVW = 0
        Variables.ADBHVFE = 0
        Variables.ADBHVUE = 0
        Variables.ADOHW = 0
        Variables.ADOHFE = 0
        Variables.ADOHUE = 0
        //Totals
        Variables.total = 0
    }
    
}

class StatsLabel: UILabel {
    func updateStat(value: Int, total: Int){
        let val:Double = Double(value)
        text = String(value)
        let avg:Double = Double(total)/30
        if(val >= 2 * avg){
            textColor = UIColor.red
        }
        else if(val <= 0.5 * avg){
            textColor = UIColor.green
        }
        else{
            textColor = UIColor.orange
        }
    }
}
