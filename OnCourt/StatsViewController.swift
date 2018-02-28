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
    @IBOutlet weak var DUFHGSWLabel: UILabel!
    @IBOutlet weak var DUFHGSFELabel: UILabel!
    @IBOutlet weak var DUFHGSUELabel: UILabel!
    @IBOutlet weak var ADFHGSWLabel: UILabel!
    @IBOutlet weak var ADFHGSFELabel: UILabel!
    @IBOutlet weak var ADFHGSUELabel: UILabel!
    @IBOutlet weak var DUBHGSWLabel: UILabel!
    @IBOutlet weak var DUBHGSFELabel: UILabel!
    @IBOutlet weak var DUBHGSEULabel: UILabel!
    @IBOutlet weak var ADBHGSWLabel: UILabel!
    @IBOutlet weak var ADBHGSFELabel: UILabel!
    @IBOutlet weak var ADBHGSUELabel: UILabel!
    @IBOutlet weak var DUFHVWLabel: UILabel!
    @IBOutlet weak var DUFHVFELabel: UILabel!
    @IBOutlet weak var DUFHVUELabel: UILabel!
    @IBOutlet weak var ADFHVWLabel: UILabel!
    @IBOutlet weak var ADFHVFELabel: UILabel!
    @IBOutlet weak var ADFHVUELabel: UILabel!
    @IBOutlet weak var DUBHVWLabel: UILabel!
    @IBOutlet weak var DUBHVFELabel: UILabel!
    @IBOutlet weak var DUBHVUELabel: UILabel!
    @IBOutlet weak var ADBHVWLabel: UILabel!
    @IBOutlet weak var ADBHVFELabel: UILabel!
    @IBOutlet weak var ADBHVUELabel: UILabel!
    @IBOutlet weak var DUOHWLabel: UILabel!
    @IBOutlet weak var DUOHFELabel: UILabel!
    @IBOutlet weak var DUOHUELabel: UILabel!
    @IBOutlet weak var ADOHWLabel: UILabel!
    @IBOutlet weak var ADOHFELabel: UILabel!
    @IBOutlet weak var ADOHUELabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round Corners
        DULabel.layer.cornerRadius=8
        ADLabel.layer.cornerRadius=8
        
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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
