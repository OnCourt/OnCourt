//
//  ErrorTypeViewController.swift
//  TennisTracker
//
//  Created by Ian Anderson on 5/11/17.
//  Copyright © 2017 Ian Anderson. All rights reserved.
//

import UIKit

class ErrorTypeViewController: UIViewController {
    
    
    //IBOutlets
    @IBOutlet weak var WinnerB: UIButton!
    @IBOutlet weak var ForcedErrorB: UIButton!
    @IBOutlet weak var UnforcedErrorB: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Round Corners
        WinnerB.layer.cornerRadius=8
        ForcedErrorB.layer.cornerRadius=8
        UnforcedErrorB.layer.cornerRadius=8
        
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "Tennis-court.png")?.draw(in: self.view.bounds)
        
        if let image: UIImage = UIGraphicsGetImageFromCurrentImageContext(){
            UIGraphicsEndImageContext()
            self.view.backgroundColor = UIColor(patternImage: image)
        }else{
            UIGraphicsEndImageContext()
            debugPrint("Image not available")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Type(_ sender: UIButton) {
        Variables.tagOfType = sender.tag
        IncrementStat()
        self.performSegue(withIdentifier: "ErrorTypeToScoreScene", sender:nil);
    }
    
    
    func IncrementStat(){
        Variables.total += 1
        switch Variables.tagOfType{
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
