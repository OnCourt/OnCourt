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
    //Type IBOutlets
    @IBOutlet weak var WinnerB: UIButton!
    @IBOutlet weak var ForcedErrorB: UIButton!
    @IBOutlet weak var UnforcedErrorB: UIButton!
    
    //Other IBOutlets
    @IBOutlet weak var Stats: UIButton!
    @IBOutlet weak var UndoButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "Tennis-court.jpg")?.draw(in: self.view.bounds)
        
        if let image: UIImage = UIGraphicsGetImageFromCurrentImageContext(){
            UIGraphicsEndImageContext()
            self.view.backgroundColor = UIColor(patternImage: image)
        }else{
            UIGraphicsEndImageContext()
            debugPrint("Image not available")
        }
        
        //Set Backgrounds
        DUFHGS.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        DUBHGS.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        DUFHV.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        DUBHV.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        DUOH.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        ADFHGS.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        ADBHGS.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        ADFHV.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        ADBHV.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        ADOH.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground.png"), for: .normal)
        WinnerB.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground-Small"), for: .normal)
        ForcedErrorB.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground-Small"), for: .normal)
        UnforcedErrorB.setBackgroundImage(#imageLiteral(resourceName: "OnCourtButtonBackground-Small"), for: .normal)
        
        
        
        //Round Corners
        DULabel.layer.masksToBounds=true
        DULabel.layer.cornerRadius=3
        /*
        DUFHGS.layer.cornerRadius=8
        DUBHGS.layer.cornerRadius=8
        DUFHV.layer.cornerRadius=8
        DUBHV.layer.cornerRadius=8
        DUOH.layer.cornerRadius=8
         */
        ADLabel.layer.masksToBounds=true
        ADLabel.layer.cornerRadius=3
        /*
        ADFHGS.layer.cornerRadius=8
        ADBHGS.layer.cornerRadius=8
        ADFHV.layer.cornerRadius=8
        ADBHV.layer.cornerRadius=8
        ADOH.layer.cornerRadius=8
        WinnerB.layer.cornerRadius=8
        ForcedErrorB.layer.cornerRadius=8
        UnforcedErrorB.layer.cornerRadius=8
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Stroke(_ sender: UIButton) {
        Variables.tagOfStroke = sender.tag
        deselectAll()
        switch Variables.tagOfStroke{
        case 0:
            //Run Stats Fucntion
            break
        case 1:
            //Run Undo fucntion
            break
        default:
            sender.setBackgroundImage(#imageLiteral(resourceName: "OnCourtDepressedBackground.png"), for: UIControlState.selected)
            sender.isSelected = true
            sender.setTitleColor(UIColor(red: 198/255, green: 237/255, blue: 44/255, alpha: 1.0), for: UIControlState.selected)
            
        }

    }
    
    @IBAction func Type(_ sender: UIButton) {
        Variables.tagOfType = sender.tag
        IncrementStat()
        deselectAll()
    }
    
    func IncrementStat(){
        Variables.total += 1
        switch Variables.tagOfType{
        case 12:
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
        case 13:
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
        case 14:
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
    
    func deselectAll(){
        DUFHGS.isSelected = false
        DUBHGS.isSelected = false
        DUFHV.isSelected = false
        DUBHV.isSelected = false
        DUOH.isSelected = false
        ADFHGS.isSelected = false
        ADBHGS.isSelected = false
        ADFHV.isSelected = false
        ADBHV.isSelected = false
        ADOH.isSelected = false
        WinnerB.isSelected = false
        ForcedErrorB.isSelected = false
        UnforcedErrorB.isSelected = false
    }

    
    
}

