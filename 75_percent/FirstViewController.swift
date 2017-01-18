//
//  FirstViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit
import KDCircularProgress

class FirstViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var attendanceTable: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellAttendance", for: indexPath)       as! attendanceTableViewCell
        if Double(attendanceClassesAttended[indexPath.row]) != nil && Double(attendanceClassesAttended[indexPath.row]) != 0
        {
            angle = Double(attendanceClassesAttended[indexPath.row])!/Double(attendanceClassesTaken[indexPath.row])! * 360}
       cell.classBunked.text = attendanceClassesBunked[indexPath.row]
      cell.classesTaken.text = attendanceClassesTaken[indexPath.row]
        cell.classesAttended.text = attendanceClassesAttended[indexPath.row]
        cell.subjectName.text = attendanceSubjectNames[indexPath.row]
        cell.subjectDate.text = attendanceDate[indexPath.row]
        cell.subjectAttenPercentage.text = attendancePercentage[indexPath.row] + "%"
    //    OperationQueue.main.addOperation{

        if Double(attendanceClassesAttended[indexPath.row]) != nil && Double(attendanceClassesAttended[indexPath.row]) != 0
        {
            cell.animate.isHidden = false
           print(angle)
        cell.animate.animate(fromAngle: 0, toAngle: angle , duration: 1, completion:nil)
           if (angle/360)*100 < 76
            {
                cell.animate.progressColors = [UIColor.red]
                cell.subjectAttenPercentage.textColor = UIColor.red
                
           }
        
        }
        else {
            cell.animate.isHidden = true
        }
        
        
      //  }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return attendanceSubjectsNumber
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

