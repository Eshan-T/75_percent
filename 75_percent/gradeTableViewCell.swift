//
//  gradeTableViewCell.swift
//  75_percent
//
//  Created by Eshan trivedi on 24/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class gradeTableViewCell: UITableViewCell {
    
    @IBOutlet var subjectListView: UIStackView!
    
    @IBOutlet var gradeListView: UIStackView!

    @IBOutlet var creditListView: UIStackView!
    @IBOutlet var whichSem: UILabel!
    
    @IBOutlet var semGPA: UILabel!
    
    @IBOutlet var semCredits: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
