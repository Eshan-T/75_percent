//
//  SecondViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellMarks", for: indexPath)       as! marksTableViewCell
        if flag == 1
        {cell.firstSessionalMarks.text = marksSessionalOneMarks[indexPath.row]
        cell.secondSessionalMarks.text = marksSessionalTwoMarks[indexPath.row]
        cell.assignmentMarks.text = marksSessionalThreeMarks[indexPath.row]
        cell.subjectName.text = marksSessionalOneSubject[indexPath.row]
        cell.subjectDate.text = marksSessionalOneSubjectCode[indexPath.row]
            cell.internalTotal.text = String(subjectInternalTotalArray[indexPath.row])
            cell.outOfTotal.text = " Out of " + outOfAssesments}
        return cell
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if flag == 1
        {  return numberOfInternallyMarkedSubjects}
        else {
            let alert = UIAlertController(title: "Alert", message: "No internal asssesments", preferredStyle: UIAlertControllerStyle.alert)
            
            let YES = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) {
                UIAlertAction in
            
            }
            
           
            alert.addAction(YES)
            
            self.present(alert, animated: true, completion: nil)

            return 0
        }
        
    }
    
    
    override func viewDidLoad() {
        let sessionalOneMarks = marksSessionalOneMarks.map { Double($0)!}
        let sessionalTwoMarks = marksSessionalTwoMarks.map { Double($0)!}
        let sessionalThreeMarks = marksSessionalThreeMarks.map { Double($0)!}
        super.viewDidLoad()
        if flag == 1
        {for index in 0...numberOfInternallyMarkedSubjects-1
        {
           if numberOfAssessments == 1
           {
               subjectInternalTotalArray[index] = sessionalOneMarks[index]
              outOfAssesments = "15"
            }
            
            if numberOfAssessments == 2
            {
                subjectInternalTotalArray[index] = sessionalOneMarks[index] + sessionalTwoMarks[index]
                outOfAssesments = "30"
            }
            if numberOfAssessments == 3
            {
                
                subjectInternalTotalArray.append( sessionalOneMarks[index] + sessionalTwoMarks[index] + sessionalThreeMarks[index])
                outOfAssesments = "50"

            }
        
        
            }}
        else{
            //
        }
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

