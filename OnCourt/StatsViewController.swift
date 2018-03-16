//
//  StatsViewController.swift
//  TennisTracker
//
//  Created by Ian Anderson on 5/11/17.
//  Copyright © 2017 Ian Anderson. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {
    
    
    //IBOutlets
    @IBOutlet weak var DULabel: UILabel!
    @IBOutlet weak var ADLabel: UILabel!
    
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
        
        //Round Corners
        DULabel.layer.cornerRadius=8
        ADLabel.layer.cornerRadius=8
        /*
        DUFHGSWLabel.text = String(Variables.DUFHGSW)
        DUFHGSFELabel.text = String(Variables.DUFHGSFE)
        DUFHGSUELabel.text = String(Variables.DUFHGSUE)
        ADFHGSWLabel.text = String(Variables.ADFHGSW)
        ADFHGSFELabel.text = String(Variables.ADFHGSFE)
        ADFHGSUELabel.text = String(Variables.ADFHGSUE)
        DUBHGSWLabel.text = String(Variables.DUBHGSW)
        DUBHGSFELabel.text = String(Variables.DUBHGSFE)
        DUBHGSEULabel.text = String(Variables.DUBHGSUE)
        ADBHGSWLabel.text = String(Variables.ADBHGSW)
        ADBHGSFELabel.text = String(Variables.ADBHGSFE)
        ADBHGSUELabel.text = String(Variables.ADBHGSUE)
        DUFHVWLabel.text = String(Variables.DUFHVW)
        DUFHVFELabel.text = String(Variables.DUFHVFE)
        DUFHVUELabel.text = String(Variables.DUFHVUE)
        ADFHVWLabel.text = String(Variables.ADFHVW)
        ADFHVFELabel.text = String(Variables.ADFHVFE)
        ADFHVUELabel.text = String(Variables.ADFHVUE)
        DUBHVWLabel.text = String(Variables.DUBHVW)
        DUBHVFELabel.text = String(Variables.DUBHVFE)
        DUBHVUELabel.text = String(Variables.DUBHVUE)
        ADBHVWLabel.text = String(Variables.ADBHVW)
        ADBHVFELabel.text = String(Variables.ADBHVFE)
        ADBHVUELabel.text = String(Variables.ADBHVUE)
        DUOHWLabel.text = String(Variables.DUOHW)
        DUOHFELabel.text = String(Variables.DUOHUE)
        DUOHUELabel.text = String(Variables.DUOHUE)
        ADOHWLabel.text = String(Variables.ADOHW)
        ADOHFELabel.text = String(Variables.ADOHFE)
        ADOHUELabel.text = String(Variables.ADOHUE)
 */
        DUFHGSWLabel.updateStat(value: Variables.DUFHGSW)
        DUFHGSFELabel.updateStat(value: Variables.DUFHGSFE)
        DUFHGSUELabel.updateStat(value: Variables.DUFHGSUE)
        ADFHGSWLabel.updateStat(value: Variables.ADFHGSW)
        ADFHGSFELabel.updateStat(value: Variables.ADFHGSFE)
        ADFHGSUELabel.updateStat(value: Variables.ADFHGSUE)
        DUBHGSWLabel.updateStat(value: Variables.DUBHGSW)
        DUBHGSFELabel.updateStat(value: Variables.DUBHGSFE)
        DUBHGSEULabel.updateStat(value: Variables.DUBHGSUE)
        ADBHGSWLabel.updateStat(value: Variables.ADBHGSW)
        ADBHGSFELabel.updateStat(value: Variables.ADBHGSFE)
        ADBHGSUELabel.updateStat(value: Variables.ADBHGSUE)
        DUFHVWLabel.updateStat(value: Variables.DUFHVW)
        DUFHVFELabel.updateStat(value: Variables.DUFHVFE)
        DUFHVUELabel.updateStat(value: Variables.DUFHVUE)
        ADFHVWLabel.updateStat(value: Variables.ADFHVW)
        ADFHVFELabel.updateStat(value: Variables.ADFHVFE)
        ADFHVUELabel.updateStat(value: Variables.ADFHVUE)
        DUBHVWLabel.updateStat(value: Variables.DUBHVW)
        DUBHVFELabel.updateStat(value: Variables.DUBHVFE)
        DUBHVUELabel.updateStat(value: Variables.DUBHVUE)
        ADBHVWLabel.updateStat(value: Variables.ADBHVW)
        ADBHVFELabel.updateStat(value: Variables.ADBHVFE)
        ADBHVUELabel.updateStat(value: Variables.ADBHVUE)
        DUOHWLabel.updateStat(value: Variables.DUOHW)
        DUOHFELabel.updateStat(value: Variables.DUOHUE)
        DUOHUELabel.updateStat(value: Variables.DUOHUE)
        ADOHWLabel.updateStat(value: Variables.ADOHW)
        ADOHFELabel.updateStat(value: Variables.ADOHFE)
        ADOHUELabel.updateStat(value: Variables.ADOHUE)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class StatsLabel: UILabel {
    func updateStat(value:Int){
        let val:Double = Double(value)
        text = String(value)
        let avg:Double = Double(Variables.total)/30
        if(val >= 2 * avg){
            textColor = UIColor.red
        }
        else if(val <= 0.5 * avg){
            textColor = UIColor.green
        }
        else{
            textColor = UIColor.yellow
        }
    }
}
