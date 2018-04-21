//
//  GamesViewController.swift
//  OnCourt
//
//  Created by Ian Anderson on 1/17/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit
import os.log

class MatchViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var notesView: UITextView!
    
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
    
    
    
    /*
     This value is either passed by `MatchTableViewController` in `prepare(for:sender:)`
     or constructed as part of adding a new match.
     */
    var match: Match?
    var total: Int = 0
    var notes: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
        // Set up views if editing an existing Match.
        if let match = match {
            navigationItem.title = match.name
            nameTextField.text = match.name
            dateTextField.text = match.date
            
            
            DUFHGSWLabel.updateStat(value: match.DUFHGSW, total: match.total)
            DUFHGSFELabel.updateStat(value: match.DUFHGSFE, total: match.total)
            DUFHGSUELabel.updateStat(value: match.DUFHGSUE, total: match.total)
            ADFHGSWLabel.updateStat(value: match.ADFHGSW, total: match.total)
            ADFHGSFELabel.updateStat(value: match.ADFHGSFE, total: match.total)
            ADFHGSUELabel.updateStat(value: match.ADFHGSUE, total: match.total)
            DUBHGSWLabel.updateStat(value: match.DUBHGSW, total: match.total)
            DUBHGSFELabel.updateStat(value: match.DUBHGSFE, total: match.total)
            DUBHGSEULabel.updateStat(value: match.DUBHGSUE, total: match.total)
            ADBHGSWLabel.updateStat(value: match.ADBHGSW, total: match.total)
            ADBHGSFELabel.updateStat(value: match.ADBHGSFE, total: match.total)
            ADBHGSUELabel.updateStat(value: match.ADBHGSUE, total: match.total)
            DUFHVWLabel.updateStat(value: match.DUFHVW, total: match.total)
            DUFHVFELabel.updateStat(value: match.DUFHVFE, total: match.total)
            DUFHVUELabel.updateStat(value: match.DUFHVUE, total: match.total)
            ADFHVWLabel.updateStat(value: match.ADFHVW, total: match.total)
            ADFHVFELabel.updateStat(value: match.ADFHVFE, total: match.total)
            ADFHVUELabel.updateStat(value: match.ADFHVUE, total: match.total)
            DUBHVWLabel.updateStat(value: match.DUBHVW, total: match.total)
            DUBHVFELabel.updateStat(value: match.DUBHVFE, total: match.total)
            DUBHVUELabel.updateStat(value: match.DUBHVUE, total: match.total)
            ADBHVWLabel.updateStat(value: match.ADBHVW, total: match.total)
            ADBHVFELabel.updateStat(value: match.ADBHVFE, total: match.total)
            ADBHVUELabel.updateStat(value: match.ADBHVUE, total: match.total)
            DUOHWLabel.updateStat(value: match.DUOHW, total: match.total)
            DUOHFELabel.updateStat(value: match.DUOHUE, total: match.total)
            DUOHUELabel.updateStat(value: match.DUOHUE, total: match.total)
            ADOHWLabel.updateStat(value: match.ADOHW, total: match.total)
            ADOHFELabel.updateStat(value: match.ADOHFE, total: match.total)
            ADOHUELabel.updateStat(value: match.ADOHUE, total: match.total)
            total = match.total
            notes = match.notes
            notesView.text = notes
        }
        
        //Round Corners
        DULabel.layer.masksToBounds=true
        DULabel.layer.cornerRadius=4
        
        ADLabel.layer.masksToBounds=true
        ADLabel.layer.cornerRadius=4
        
        notesView.layer.borderWidth = 1
        notesView.layer.borderColor = UIColor.lightGray.cgColor
        notesView.layer.masksToBounds=true
        notesView.layer.cornerRadius=8
        
        // Enable the Save button only if the text field has a valid Match name.
        updateSaveButtonState()
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Disable the Save button while editing.
        saveButton.isEnabled = false
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    
    //MARK: Navigation
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        // Depending on style of presentation (modal or push presentation), this view controller needs to be dismissed in two different ways.
        let isPresentingInAddMatchMode = presentingViewController is UINavigationController
        
        if isPresentingInAddMatchMode {
            dismiss(animated: true, completion: nil)
        }
        else if let owningNavigationController = navigationController{
            owningNavigationController.popViewController(animated: true)
        }
        else {
            //fatalError("The MatchViewController is not inside a navigation controller.")
            dismiss(animated: true, completion: nil)
            
        }
    }
    
    // This method lets you configure a view controller before it's presented.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            //os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        let name = nameTextField.text ?? ""
        let date = dateTextField.text ?? ""
        
        // Set the match to be passed to MatchTableViewController after the unwind segue.
        match = Match(name: name, date: date, DUFHGSW: (DUFHGSWLabel.text as! NSString).integerValue, DUFHGSFE: (DUFHGSFELabel.text as! NSString).integerValue, DUFHGSUE: (DUFHGSUELabel.text as! NSString).integerValue, DUBHGSW: (DUBHGSWLabel.text as! NSString).integerValue, DUBHGSFE: (DUBHGSFELabel.text as! NSString).integerValue, DUBHGSUE: (DUBHGSEULabel.text as! NSString).integerValue, DUFHVW: (DUFHVWLabel.text as! NSString).integerValue, DUFHVFE: (DUFHVFELabel.text as! NSString).integerValue, DUFHVUE: (DUFHVUELabel.text as! NSString).integerValue, DUBHVW: (DUBHVWLabel.text as! NSString).integerValue, DUBHVFE: (DUBHVFELabel.text as! NSString).integerValue, DUBHVUE: (DUBHVUELabel.text as! NSString).integerValue, DUOHW: (DUOHWLabel.text as! NSString).integerValue, DUOHFE: (DUOHFELabel.text as! NSString).integerValue, DUOHUE: (DUOHUELabel.text as! NSString).integerValue, ADFHGSW: (ADFHGSWLabel.text as! NSString).integerValue, ADFHGSFE: (ADFHGSFELabel.text as! NSString).integerValue, ADFHGSUE: (ADFHGSUELabel.text as! NSString).integerValue, ADBHGSW: (ADBHGSWLabel.text as! NSString).integerValue, ADBHGSFE: (ADBHGSFELabel.text as! NSString).integerValue, ADBHGSUE: (ADBHGSUELabel.text as! NSString).integerValue, ADFHVW: (ADFHVWLabel.text as! NSString).integerValue, ADFHVFE: (ADFHVFELabel.text as! NSString).integerValue, ADFHVUE: (ADFHVUELabel.text as! NSString).integerValue, ADBHVW: (ADBHVWLabel.text as! NSString).integerValue, ADBHVFE: (ADBHVFELabel.text as! NSString).integerValue, ADBHVUE: (ADBHVUELabel.text as! NSString).integerValue, ADOHW: (ADOHWLabel.text as! NSString).integerValue, ADOHFE: (ADOHFELabel.text as! NSString).integerValue, ADOHUE: (ADOHUELabel.text as! NSString).integerValue, total: total, notes: notesView.text)
    }
    
    //MARK: Actions
    
    //MARK: Private Methods
    
    private func updateSaveButtonState() {
        // Disable the Save button if the text field is empty.
        let text = nameTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    
}


