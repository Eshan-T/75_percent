//
//  gradeTableViewCell.swift
//  75_percent
//
//  Created by Eshan trivedi on 24/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit
import KDCircularProgress
class gradeTableViewCell: UITableViewCell {
    

    
    @IBOutlet var subjectListView: UIStackView!
    
    @IBOutlet var gradeListView: UIStackView!

    @IBOutlet var creditListView: UIStackView!
    @IBOutlet var whichSem: UILabel!
    
    @IBOutlet var semGPA: UILabel!
    
    @IBOutlet var semCredits: UILabel!
    
    
    @IBOutlet var sub1lab: UILabel!
    
    
    @IBOutlet var sub2lab: UILabel!
    
    
    @IBOutlet var sub3lab: UILabel!
    
    
    @IBOutlet var sub4lab: UILabel!
    
    
    @IBOutlet var sub5lab: UILabel!
    
    
    @IBOutlet var sub6lab: UILabel!
    
    
    @IBOutlet var sub7lab: UILabel!
    
    @IBOutlet var sub8lab: UILabel!
    
    @IBOutlet var sub9lab: UILabel!
    
    
    @IBOutlet var grade1lab: UILabel!
    
    
    @IBOutlet var grade2lab: UILabel!
    
    
    @IBOutlet var grade3lab: UILabel!
    
    
    
    
    @IBOutlet var grade4lab: UILabel!
    
    @IBOutlet var grade5lab: UILabel!
    
    @IBOutlet var grade6lab: UILabel!
    
    @IBOutlet var grade7lab: UILabel!
    
    @IBOutlet var grade8lab: UILabel!
    
    @IBOutlet var grade9lab: UILabel!
    
    @IBOutlet var credit1lab: UILabel!
    
    
    @IBOutlet var credit2lab: UILabel!
    
    @IBOutlet var credit3lab: UILabel!
    
    
    @IBOutlet var credit4lab: UILabel!
    @IBOutlet var credit5lab: UILabel!
    
    @IBOutlet var credit6lab: UILabel!
    
    @IBOutlet var credit7lab: UILabel!
    
    @IBOutlet var credit8lab: UILabel!
    
    
    @IBOutlet var credit9lab: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   /*  override func prepareForReuse() {
        super.prepareForReuse()
       subjectListView.removeFromSuperview()
        gradeListView.removeFromSuperview()
        creditListView.removeFromSuperview()
        
        mainStackview.addArrangedSubview(<#T##view: UIView##UIView#>)
     
     
     
        for index in  0...subjectListView.arrangedSubviews.count-1
            {
     
     
               // subjectListView.removeArrangedSubview(subjectListView.arrangedSubviews[index])
                subjectListView.arrangedSubviews[index].removeFromSuperview()
                gradeListView.arrangedSubviews[index].removeFromSuperview()
                creditListView.arrangedSubviews[index].removeFromSuperview()
            }
        
        }*/
    }
    
    
