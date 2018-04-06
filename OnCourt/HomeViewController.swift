//
//  HomeViewController.swift
//  OnCourt
//
//  Created by Ian Anderson on 1/17/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //Labels
    //Singles
    @IBOutlet weak var Singles1Label: UILabel!
    @IBOutlet weak var Singles2Label: UILabel!
    @IBOutlet weak var Singles3Label: UILabel!
    //Doubles
    @IBOutlet weak var Doubles1DeuceLabel: UILabel!
    @IBOutlet weak var Doubles1AdLabel: UILabel!
    @IBOutlet weak var Doubles2DeuceLabel: UILabel!
    @IBOutlet weak var Doubles2AdLabel: UILabel!
    @IBOutlet weak var Doubles3DeuceLabel: UILabel!
    @IBOutlet weak var Doubles3AdLabel: UILabel!
    @IBOutlet weak var Doubles4DeuceLabel: UILabel!
    @IBOutlet weak var Doubles4AdLabel: UILabel!
    //Team
    @IBOutlet weak var TeamNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Load Players
        let players = UserDefaults.standard
        //Load Singles
        Singles1Label.text = players.string(forKey: "singles1")
        Singles2Label.text = players.string(forKey: "singles2")
        Singles3Label.text = players.string(forKey: "singles3")
        //Load Doubles
        Doubles1DeuceLabel.text = players.string(forKey: "doubles1deuce")
        Doubles1AdLabel.text = players.string(forKey: "doubles1ad")
        Doubles2DeuceLabel.text = players.string(forKey: "doubles2deuce")
        Doubles2AdLabel.text = players.string(forKey: "doubles2ad")
        Doubles3DeuceLabel.text = players.string(forKey: "doubles3deuce")
        Doubles3AdLabel.text = players.string(forKey: "doubles3ad")
        Doubles4DeuceLabel.text = players.string(forKey: "doubles4deuce")
        Doubles4AdLabel.text = players.string(forKey: "doubles4ad")
        //Load Team Name
        if(players.string(forKey: "teamName") != ""){
            TeamNameLabel.text = players.string(forKey: "teamName")
        }
        else{
            TeamNameLabel.text = "My Team"
        }
        
    }
    
}

