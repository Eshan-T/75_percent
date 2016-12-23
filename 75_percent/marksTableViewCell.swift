//
//  marksTableViewCell.swift
//  75_percent
//
//  Created by Eshan trivedi on 23/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class marksTableViewCell: UITableViewCell {

    
    @IBOutlet var firstSessionalMarks: UILabel!
    
    @IBOutlet var secondSessionalMarks: UILabel!
    
    @IBOutlet var assignmentMarks: UILabel!
    
    
    @IBOutlet var subjectName: UILabel!
    
    @IBOutlet var subjectDate: UILabel!
    
    @IBOutlet var internalTotal: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
