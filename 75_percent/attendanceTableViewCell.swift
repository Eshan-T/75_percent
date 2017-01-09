//
//  attendanceTableViewCell.swift
//  75_percent
//
//  Created by Eshan trivedi on 23/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit
import KDCircularProgress
class attendanceTableViewCell: UITableViewCell {

    @IBOutlet var classesTaken: UILabel!
    @IBOutlet var classBunked: UILabel!
    
    @IBOutlet var classesAttended: UILabel!
    
    @IBOutlet var animate: KDCircularProgress!
    @IBOutlet var subjectName: UILabel!
    @IBOutlet var subjectDate: UILabel!
    @IBOutlet var subjectAttenPercentage: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
