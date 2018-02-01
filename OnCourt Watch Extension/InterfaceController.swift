//
//  InterfaceController.swift
//  OnCourt Watch Extension
//
//  Created by Mitch Mueller  on 1/30/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
   
    @IBOutlet var picker: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let player1 = WKPickerItem()
        player1.title = "Patrick"
        
        let player2 = WKPickerItem()
        player2.title = "Dan"
        
        let player3 = WKPickerItem()
        player3.title = "Dev"
        
        let itemsArray = [player1, player2, player3]
        
        picker.setItems(itemsArray)
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func pickerChanged(_ value: Int) {
        print(value)
    }
    
}
