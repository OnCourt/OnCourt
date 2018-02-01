//
//  InterfaceController.swift
//  OnCourtWatch Extension
//
//  Created by Ian Anderson on 2/1/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import WatchKit
import Foundation

struct WatchVariables {
    static var tagOfHit: Int = 0
}

class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func Hit(_ sender: WKInterfaceButton) {
        WatchVariables.tagOfHit = sender.Label
        IncrementStat()
        self.performSegue(withIdentifier: "ErrorTypeToScoreScene", sender:nil);
    }
    
    
    func IncrementStat(){
        switch WatchVariables.tagOfHit{
        case 0:
            switch Variables.tagOfStroke{
            case 2:Variables.DUFHGSW += 1
            case 3:Variables.DUBHGSW += 1
            case 4:Variables.DUFHVW += 1
            case 5:Variables.DUBHVW += 1
            case 6:Variables.DUOHW += 1
            case 7:Variables.ADFHGSW += 1
            case 8:Variables.ADBHGSW += 1
            case 9:Variables.ADFHVW += 1
            case 10:Variables.ADBHVW += 1
            case 11:Variables.ADOHW += 1
            default: break
            }
        case 1:
            switch Variables.tagOfStroke{
            case 2:Variables.DUFHGSFE += 1
            case 3:Variables.DUBHGSFE += 1
            case 4:Variables.DUFHVFE += 1
            case 5:Variables.DUBHVFE += 1
            case 6:Variables.DUOHFE += 1
            case 7:Variables.ADFHGSFE += 1
            case 8:Variables.ADBHGSFE += 1
            case 9:Variables.ADFHVFE += 1
            case 10:Variables.ADBHVFE += 1
            case 11:Variables.ADOHFE += 1
            default: break
            }
        case 2:
            switch Variables.tagOfStroke{
            case 2:Variables.DUFHGSUE += 1
            case 3:Variables.DUBHGSUE += 1
            case 4:Variables.DUFHVUE += 1
            case 5:Variables.DUBHVUE += 1
            case 6:Variables.DUOHUE += 1
            case 7:Variables.ADFHGSUE += 1
            case 8:Variables.ADBHGSUE += 1
            case 9:Variables.ADFHVUE += 1
            case 10:Variables.ADBHVUE += 1
            case 11:Variables.ADOHUE += 1
            default: break
            }
        default: break
        }
        
    }
    
}
