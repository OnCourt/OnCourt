//
//  MainPlayViewController.swift
//  TennisTracker
//
//  Created by Ian Anderson on 5/5/17.
//  Copyright © 2017 Ian Anderson. All rights reserved.
//

import UIKit

struct Variables {
    static var tagOfType: Int = 0
    static var tagOfStroke: Int = 0
    
    //Stroke Stat Variables used to populate table
    
    //Duece Returner
    static var DUFHGSW: Int = 0
    static var DUFHGSFE: Int = 0
    static var DUFHGSUE: Int = 0
    static var DUBHGSW: Int = 0
    static var DUBHGSFE: Int = 0
    static var DUBHGSUE: Int = 0
    static var DUFHVW: Int = 0
    static var DUFHVFE: Int = 0
    static var DUFHVUE: Int = 0
    static var DUBHVW: Int = 0
    static var DUBHVFE: Int = 0
    static var DUBHVUE: Int = 0
    static var DUOHW: Int = 0
    static var DUOHFE: Int = 0
    static var DUOHUE: Int = 0
    //AD Returner
    static var ADFHGSW: Int = 0
    static var ADFHGSFE: Int = 0
    static var ADFHGSUE: Int = 0
    static var ADBHGSW: Int = 0
    static var ADBHGSFE: Int = 0
    static var ADBHGSUE: Int = 0
    static var ADFHVW: Int = 0
    static var ADFHVFE: Int = 0
    static var ADFHVUE: Int = 0
    static var ADBHVW: Int = 0
    static var ADBHVFE: Int = 0
    static var ADBHVUE: Int = 0
    static var ADOHW: Int = 0
    static var ADOHFE: Int = 0
    static var ADOHUE: Int = 0
    //Totals
    static var total: Int = 0
    
}

class MainPlayViewController: UIViewController {

    //Duece Retuner IBOutlets
    @IBOutlet weak var DULabel: UILabel!
    @IBOutlet weak var DUFHGS: UIButton!
    @IBOutlet weak var DUBHGS: UIButton!
    @IBOutlet weak var DUFHV: UIButton!
    @IBOutlet weak var DUBHV: UIButton!
    @IBOutlet weak var DUOH: UIButton!
    //AD Returner IBOutlets
    @IBOutlet weak var ADLabel: UILabel!
    @IBOutlet weak var ADFHGS: UIButton!
    @IBOutlet weak var ADBHGS: UIButton!
    @IBOutlet weak var ADFHV: UIButton!
    @IBOutlet weak var ADBHV: UIButton!
    @IBOutlet weak var ADOH: UIButton!
    //Other IBOutlets
    @IBOutlet weak var UndoButton: UIButton!
    @IBOutlet weak var Stats: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "Tennis-court.png")?.draw(in: self.view.bounds)
        
        if let image: UIImage = UIGraphicsGetImageFromCurrentImageContext(){
            UIGraphicsEndImageContext()
            self.view.backgroundColor = UIColor(patternImage: image)
        }else{
            UIGraphicsEndImageContext()
            debugPrint("Image not available")
        }
        
        //Round Corners
        DULabel.layer.masksToBounds=true
        DULabel.layer.cornerRadius=4
        DUFHGS.layer.cornerRadius=8
        DUBHGS.layer.cornerRadius=8
        DUFHV.layer.cornerRadius=8
        DUBHV.layer.cornerRadius=8
        DUOH.layer.cornerRadius=8
        ADLabel.layer.masksToBounds=true
        ADLabel.layer.cornerRadius=4
        ADFHGS.layer.cornerRadius=8
        ADBHGS.layer.cornerRadius=8
        ADFHV.layer.cornerRadius=8
        ADBHV.layer.cornerRadius=8
        ADOH.layer.cornerRadius=8
        UndoButton.layer.cornerRadius=8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Stroke(_ sender: UIButton) {
        Variables.tagOfStroke = sender.tag
        switch Variables.tagOfStroke{
        case 0:
            //Run Stats Fucntion
            break
        case 1:
            //Run Undo fucntion
            break
        default:
            self.performSegue(withIdentifier: "ReturnerToType", sender:sender);
        }

    }

    
    
}

