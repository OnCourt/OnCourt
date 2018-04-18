//
//  MatchTableViewController.swift
//  OnCourt
//
//  Created by Ian Anderson on 4/16/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit
import os.log

class MatchTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var matches = [Match]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Use the edit button item provided by the table view controller.
        navigationItem.leftBarButtonItem = editButtonItem
        
        // Load any saved matches, otherwise load sample data.
        if let savedMatches = loadMatches() {
            matches += savedMatches
        }
        else {
            // Load the sample data.
            loadSampleMatches()
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MatchTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MatchTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MatchTableViewCell.")
        }
        
        // Fetches the appropriate match for the data source layout.
        let match = matches[indexPath.row]
        
        cell.nameLabel.text = match.name
        cell.dateLabel.text = match.date
        
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            matches.remove(at: indexPath.row)
            saveMatches()
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    //MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? "") {
            
        case "AddItem":
            if #available(iOS 10.0, *) {
                os_log("Adding a new match.", log: OSLog.default, type: .debug)
            } else {
                // Fallback on earlier versions
            }
            
        case "ShowDetail":
            guard let matchDetailViewController = segue.destination as? MatchViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedMatchCell = sender as? MatchTableViewCell else {
                fatalError("Unexpected sender: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedMatchCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedMatch = matches[indexPath.row]
            matchDetailViewController.match = selectedMatch
            
        default:
            fatalError("Unexpected Segue Identifier; \(segue.identifier)")
        }
    }
    
    
    //MARK: Actions
    
    @IBAction func unwindToMatchList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? MatchViewController, let match = sourceViewController.match {
            
            if let selectedIndexPath =     tableView.indexPathForSelectedRow {
                // Update an existing match.
                matches[selectedIndexPath.row] = match
                tableView.reloadRows(at: [selectedIndexPath], with: .none)
            }
            else {
                // Add a new match.
                let newIndexPath = IndexPath(row: matches.count, section: 0)
                
                matches.append(match)
                tableView.insertRows(at: [newIndexPath], with: .automatic)
            }
            
            // Save the matches.
            saveMatches()
        }
    }
    
    //MARK: Private Methods
    
    private func loadSampleMatches() {
        
        guard let match1 = Match(name: "Sample", date: "12/18/1999") else {
            fatalError("Unable to instantiate match1")
        }
        guard let match2 = Match(name: "Sample 2", date: "10/17/1999") else {
            fatalError("Unable to instantiate match1")
        }
        
        
        matches += [match1, match2]
    }
    
    private func saveMatches() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(matches, toFile: Match.ArchiveURL.path)
        if isSuccessfulSave {
            if #available(iOS 10.0, *) {
                os_log("Matches successfully saved.", log: OSLog.default, type: .debug)
            } else {
                // Fallback on earlier versions
            }
        } else {
            if #available(iOS 10.0, *) {
                os_log("Failed to save matches...", log: OSLog.default, type: .error)
            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    private func loadMatches() -> [Match]?  {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Match.ArchiveURL.path) as? [Match]
    }
    
}
