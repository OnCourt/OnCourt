//
//  MatchTableViewCell.swift
//  OnCourt
//
//  Created by Ian Anderson on 4/16/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var dateLabel: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
