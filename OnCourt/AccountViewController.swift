//
//  AccountViewController.swift
//  OnCourt
//
//  Created by Ian Anderson on 1/22/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    //IBOutlets
    //Singles
    @IBOutlet weak var Singles1Field: UITextField!
    @IBOutlet weak var Singles2Field: UITextField!
    @IBOutlet weak var Singles3Field: UITextField!
    //Doubles
    @IBOutlet weak var Doubles1DeuceField: UITextField!
    @IBOutlet weak var Doubles1AdField: UITextField!
    @IBOutlet weak var Doubles2DeuceField: UITextField!
    @IBOutlet weak var Doubles2AdField: UITextField!
    @IBOutlet weak var Doubles3DeuceField: UITextField!
    @IBOutlet weak var Doubles3AdField: UITextField!
    @IBOutlet weak var Doubles4DeuceField: UITextField!
    @IBOutlet weak var Doubles4AdField: UITextField!
    //Team
    @IBOutlet weak var TeamNameField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func saveSwitchPressed(_ sender: UISwitch) {
//        UserDefaults.standard.set(sender.isOn, forKey: "switchState")
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Load Players
        let players = UserDefaults.standard
        //Load Singles
        Singles1Field.text = players.string(forKey: "singles1")
        Singles2Field.text = players.string(forKey: "singles2")
        Singles3Field.text = players.string(forKey: "singles3")
        //Load Doubles
        Doubles1DeuceField.text = players.string(forKey: "doubles1deuce")
        Doubles1AdField.text = players.string(forKey: "doubles1ad")
        Doubles2DeuceField.text = players.string(forKey: "doubles2deuce")
        Doubles2AdField.text = players.string(forKey: "doubles2ad")
        Doubles3DeuceField.text = players.string(forKey: "doubles3deuce")
        Doubles3AdField.text = players.string(forKey: "doubles3ad")
        Doubles4DeuceField.text = players.string(forKey: "doubles4deuce")
        Doubles4AdField.text = players.string(forKey: "doubles4ad")
        //Load Team Name
        TeamNameField.text = players.string(forKey: "teamName")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Save Players
        let players = UserDefaults.standard
        //Save Singles
        players.set(Singles1Field.text, forKey: "singles1")
        players.set(Singles2Field.text, forKey: "singles2")
        players.set(Singles3Field.text, forKey: "singles3")
        //Save Doubles
        players.set(Doubles1DeuceField.text, forKey: "doubles1deuce")
        players.set(Doubles1AdField.text, forKey: "doubles1ad")
        players.set(Doubles2DeuceField.text, forKey: "doubles2deuce")
        players.set(Doubles2AdField.text, forKey: "doubles2ad")
        players.set(Doubles3DeuceField.text, forKey: "doubles3deuce")
        players.set(Doubles3AdField.text, forKey: "doubles3ad")
        players.set(Doubles4DeuceField.text, forKey: "doubles4deuce")
        players.set(Doubles4AdField.text, forKey: "doubles4ad")
        //Save Team Name
        players.set(TeamNameField.text, forKey: "teamName")
    }
}



