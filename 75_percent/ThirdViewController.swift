//
//  ThirdViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource
{

    
    
    
    @IBOutlet var cgpaLabel: UILabel!
    
    @IBOutlet var totalCreditsLabel: UILabel!
    
    @IBOutlet var highestGPALabel: UILabel!
    
    @IBOutlet var lowestGPALabel: UILabel!
    
    
    /*func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    */
   
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfSems
   }
    
    
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "CellCGPA", for: indexPath)       as! gradeTableViewCell
    
    

       switch indexPath.row
        
       {
        
        
        
       case 7 :
        cell.whichSem.text = "Semester 8"
        cell.semGPA.text = sem8GPA
        cell.semCredits.text = sem8Credits

        if sem8Subjects.count == 7
        {
            cell.sub1lab.text = sem8Subjects[0]
            cell.sub2lab.text = sem8Subjects[1]
            cell.sub3lab.text = sem8Subjects[2]
            cell.sub4lab.text = sem8Subjects[3]
            cell.sub5lab.text = sem8Subjects[4]
            cell.sub6lab.text = sem8Subjects[5]
            cell.sub7lab.text = sem8Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem8Grades[0]
            cell.grade2lab.text = sem8Grades[1]
            cell.grade3lab.text = sem8Grades[2]
            cell.grade4lab.text = sem8Grades[3]
            cell.grade5lab.text = sem8Grades[4]
            cell.grade6lab.text = sem8Grades[5]
            cell.grade7lab.text = sem8Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem8CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem8CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem8CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem8CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem8CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem8CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem8CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem8Subjects.count == 8{
            cell.sub1lab.text = sem8Subjects[0]
            cell.sub2lab.text = sem8Subjects[1]
            cell.sub3lab.text = sem8Subjects[2]
            cell.sub4lab.text = sem8Subjects[3]
            cell.sub5lab.text = sem8Subjects[4]
            cell.sub6lab.text = sem8Subjects[5]
            cell.sub7lab.text = sem8Subjects[6]
            cell.sub8lab.text = sem8Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem8Grades[0]
            cell.grade2lab.text = sem8Grades[1]
            cell.grade3lab.text = sem8Grades[2]
            cell.grade4lab.text = sem8Grades[3]
            cell.grade5lab.text = sem8Grades[4]
            cell.grade6lab.text = sem8Grades[5]
            cell.grade7lab.text = sem8Grades[6]
            cell.grade8lab.text = sem8Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem8CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem8CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem8CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem8CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem8CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem8CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem8CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem8CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem8Subjects.count == 9{
            cell.sub1lab.text = sem8Subjects[0]
            cell.sub2lab.text = sem8Subjects[1]
            cell.sub3lab.text = sem8Subjects[2]
            cell.sub4lab.text = sem8Subjects[3]
            cell.sub5lab.text = sem8Subjects[4]
            cell.sub6lab.text = sem8Subjects[5]
            cell.sub7lab.text = sem8Subjects[6]
            cell.sub8lab.text = sem8Subjects[7]
            cell.sub9lab.text = sem8Subjects[8]
            
            cell.grade1lab.text = sem8Grades[0]
            cell.grade2lab.text = sem8Grades[1]
            cell.grade3lab.text = sem8Grades[2]
            cell.grade4lab.text = sem8Grades[3]
            cell.grade5lab.text = sem8Grades[4]
            cell.grade6lab.text = sem8Grades[5]
            cell.grade7lab.text = sem8Grades[6]
            cell.grade8lab.text = sem8Grades[7]
            cell.grade9lab.text = sem8Grades[8]
            
            cell.credit1lab.text = sem8CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem8CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem8CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem8CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem8CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem8CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem8CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem8CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem8CreditsForSubjects[8]+" credits"
            
            
            
        }

       /* if subLabelsforsem8.count == 0
        {  for index in (0...sem8Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem8Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem8.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem8Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem8.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem8CreditsForSubjects[index] + "credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem8.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem8[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem8[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem8[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem8Subjects.count-1)
            {
                
                subLabelsforsem8[index].text = sem8Subjects[index]
                gradeLabelsforsem8[index].text =  sem8Grades[index]
                creditLabelsforsem8[index].text = sem8CreditsForSubjects[index] + "credits"
           
                
                
            }
            
            
            
            
            
        }*/
        break
        
        
        
       case 6:
        cell.whichSem.text = "Semester 7"
        cell.semGPA.text = sem7GPA
        cell.semCredits.text = sem7Credits

        if sem7Subjects.count == 7
        {
            cell.sub1lab.text = sem7Subjects[0]
            cell.sub2lab.text = sem7Subjects[1]
            cell.sub3lab.text = sem7Subjects[2]
            cell.sub4lab.text = sem7Subjects[3]
            cell.sub5lab.text = sem7Subjects[4]
            cell.sub6lab.text = sem7Subjects[5]
            cell.sub7lab.text = sem7Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem7Grades[0]
            cell.grade2lab.text = sem7Grades[1]
            cell.grade3lab.text = sem7Grades[2]
            cell.grade4lab.text = sem7Grades[3]
            cell.grade5lab.text = sem7Grades[4]
            cell.grade6lab.text = sem7Grades[5]
            cell.grade7lab.text = sem7Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem7CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem7CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem7CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem7CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem7CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem7CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem7CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem7Subjects.count == 8{
            cell.sub1lab.text = sem7Subjects[0]
            cell.sub2lab.text = sem7Subjects[1]
            cell.sub3lab.text = sem7Subjects[2]
            cell.sub4lab.text = sem7Subjects[3]
            cell.sub5lab.text = sem7Subjects[4]
            cell.sub6lab.text = sem7Subjects[5]
            cell.sub7lab.text = sem7Subjects[6]
            cell.sub8lab.text = sem7Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem7Grades[0]
            cell.grade2lab.text = sem7Grades[1]
            cell.grade3lab.text = sem7Grades[2]
            cell.grade4lab.text = sem7Grades[3]
            cell.grade5lab.text = sem7Grades[4]
            cell.grade6lab.text = sem7Grades[5]
            cell.grade7lab.text = sem7Grades[6]
            cell.grade8lab.text = sem7Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem7CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem7CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem7CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem7CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem7CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem7CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem7CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem7CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem7Subjects.count == 9{
            cell.sub1lab.text = sem7Subjects[0]
            cell.sub2lab.text = sem7Subjects[1]
            cell.sub3lab.text = sem7Subjects[2]
            cell.sub4lab.text = sem7Subjects[3]
            cell.sub5lab.text = sem7Subjects[4]
            cell.sub6lab.text = sem7Subjects[5]
            cell.sub7lab.text = sem7Subjects[6]
            cell.sub8lab.text = sem7Subjects[7]
            cell.sub9lab.text = sem7Subjects[8]
            
            cell.grade1lab.text = sem7Grades[0]
            cell.grade2lab.text = sem7Grades[1]
            cell.grade3lab.text = sem7Grades[2]
            cell.grade4lab.text = sem7Grades[3]
            cell.grade5lab.text = sem7Grades[4]
            cell.grade6lab.text = sem7Grades[5]
            cell.grade7lab.text = sem7Grades[6]
            cell.grade8lab.text = sem7Grades[7]
            cell.grade9lab.text = sem7Grades[8]
            
            cell.credit1lab.text = sem7CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem7CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem7CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem7CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem7CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem7CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem7CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem7CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem7CreditsForSubjects[8]+" credits"
            
            
            
        }

       /* if subLabelsforsem7.count == 0
        {  for index in (0...sem7Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem7Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem7.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem7Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem7.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem7CreditsForSubjects[index] + "credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem7.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem7[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem7[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem7[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem7Subjects.count-1)
            {
                
                subLabelsforsem7[index].text = sem7Subjects[index]
                gradeLabelsforsem7[index].text =  sem7Grades[index]
                creditLabelsforsem7[index].text = sem7CreditsForSubjects[index]+"credits"
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }*/
        break
        

        
       case 5:
        
        cell.whichSem.text = "Semester 6"
        cell.semGPA.text = sem6GPA
        cell.semCredits.text = sem6Credits

        if sem6Subjects.count == 7
        {
            cell.sub1lab.text = sem6Subjects[0]
            cell.sub2lab.text = sem6Subjects[1]
            cell.sub3lab.text = sem6Subjects[2]
            cell.sub4lab.text = sem6Subjects[3]
            cell.sub5lab.text = sem6Subjects[4]
            cell.sub6lab.text = sem6Subjects[5]
            cell.sub7lab.text = sem6Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem6Grades[0]
            cell.grade2lab.text = sem6Grades[1]
            cell.grade3lab.text = sem6Grades[2]
            cell.grade4lab.text = sem6Grades[3]
            cell.grade5lab.text = sem6Grades[4]
            cell.grade6lab.text = sem6Grades[5]
            cell.grade7lab.text = sem6Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem6CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem6CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem6CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem6CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem6CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem6CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem6CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem6Subjects.count == 8{
            cell.sub1lab.text = sem6Subjects[0]
            cell.sub2lab.text = sem6Subjects[1]
            cell.sub3lab.text = sem6Subjects[2]
            cell.sub4lab.text = sem6Subjects[3]
            cell.sub5lab.text = sem6Subjects[4]
            cell.sub6lab.text = sem6Subjects[5]
            cell.sub7lab.text = sem6Subjects[6]
            cell.sub8lab.text = sem6Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem6Grades[0]
            cell.grade2lab.text = sem6Grades[1]
            cell.grade3lab.text = sem6Grades[2]
            cell.grade4lab.text = sem6Grades[3]
            cell.grade5lab.text = sem6Grades[4]
            cell.grade6lab.text = sem6Grades[5]
            cell.grade7lab.text = sem6Grades[6]
            cell.grade8lab.text = sem6Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem6CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem6CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem6CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem6CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem6CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem6CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem6CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem6CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem6Subjects.count == 9{
            cell.sub1lab.text = sem6Subjects[0]
            cell.sub2lab.text = sem6Subjects[1]
            cell.sub3lab.text = sem6Subjects[2]
            cell.sub4lab.text = sem6Subjects[3]
            cell.sub5lab.text = sem6Subjects[4]
            cell.sub6lab.text = sem6Subjects[5]
            cell.sub7lab.text = sem6Subjects[6]
            cell.sub8lab.text = sem6Subjects[7]
            cell.sub9lab.text = sem6Subjects[8]
            
            cell.grade1lab.text = sem6Grades[0]
            cell.grade2lab.text = sem6Grades[1]
            cell.grade3lab.text = sem6Grades[2]
            cell.grade4lab.text = sem6Grades[3]
            cell.grade5lab.text = sem6Grades[4]
            cell.grade6lab.text = sem6Grades[5]
            cell.grade7lab.text = sem6Grades[6]
            cell.grade8lab.text = sem6Grades[7]
            cell.grade9lab.text = sem6Grades[8]
            
            cell.credit1lab.text = sem6CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem6CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem6CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem6CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem6CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem6CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem6CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem6CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem6CreditsForSubjects[8]+" credits"
            
            
            
        }

       /* if subLabelsforsem6.count == 0
        {  for index in (0...sem6Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem6Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem6.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem6Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem6.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem6CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem6.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem6[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem6[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem6[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem6Subjects.count-1)
            {
                
                subLabelsforsem6[index].text = sem6Subjects[index]
                gradeLabelsforsem6[index].text =  sem6Grades[index]
                creditLabelsforsem6[index].text = sem6CreditsForSubjects[index]+"credits"
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }*/
        break
        


        
       case 4:
        
        cell.whichSem.text = "Semester 5"
        cell.semGPA.text = sem5GPA
        cell.semCredits.text = sem5Credits

        if sem5Subjects.count == 7
        {
            cell.sub1lab.text = sem5Subjects[0]
            cell.sub2lab.text = sem5Subjects[1]
            cell.sub3lab.text = sem5Subjects[2]
            cell.sub4lab.text = sem5Subjects[3]
            cell.sub5lab.text = sem5Subjects[4]
            cell.sub6lab.text = sem5Subjects[5]
            cell.sub7lab.text = sem5Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem5Grades[0]
            cell.grade2lab.text = sem5Grades[1]
            cell.grade3lab.text = sem5Grades[2]
            cell.grade4lab.text = sem5Grades[3]
            cell.grade5lab.text = sem5Grades[4]
            cell.grade6lab.text = sem5Grades[5]
            cell.grade7lab.text = sem5Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem5CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem5CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem5CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem5CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem5CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem5CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem5CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem5Subjects.count == 8{
            cell.sub1lab.text = sem5Subjects[0]
            cell.sub2lab.text = sem5Subjects[1]
            cell.sub3lab.text = sem5Subjects[2]
            cell.sub4lab.text = sem5Subjects[3]
            cell.sub5lab.text = sem5Subjects[4]
            cell.sub6lab.text = sem5Subjects[5]
            cell.sub7lab.text = sem5Subjects[6]
            cell.sub8lab.text = sem5Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem5Grades[0]
            cell.grade2lab.text = sem5Grades[1]
            cell.grade3lab.text = sem5Grades[2]
            cell.grade4lab.text = sem5Grades[3]
            cell.grade5lab.text = sem5Grades[4]
            cell.grade6lab.text = sem5Grades[5]
            cell.grade7lab.text = sem5Grades[6]
            cell.grade8lab.text = sem5Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem5CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem5CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem5CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem5CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem5CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem5CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem5CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem5CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem5Subjects.count == 9{
            cell.sub1lab.text = sem5Subjects[0]
            cell.sub2lab.text = sem5Subjects[1]
            cell.sub3lab.text = sem5Subjects[2]
            cell.sub4lab.text = sem5Subjects[3]
            cell.sub5lab.text = sem5Subjects[4]
            cell.sub6lab.text = sem5Subjects[5]
            cell.sub7lab.text = sem5Subjects[6]
            cell.sub8lab.text = sem5Subjects[7]
            cell.sub9lab.text = sem5Subjects[8]
            
            cell.grade1lab.text = sem5Grades[0]
            cell.grade2lab.text = sem5Grades[1]
            cell.grade3lab.text = sem5Grades[2]
            cell.grade4lab.text = sem5Grades[3]
            cell.grade5lab.text = sem5Grades[4]
            cell.grade6lab.text = sem5Grades[5]
            cell.grade7lab.text = sem5Grades[6]
            cell.grade8lab.text = sem5Grades[7]
            cell.grade9lab.text = sem5Grades[8]
            
            cell.credit1lab.text = sem5CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem5CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem5CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem5CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem5CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem5CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem5CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem5CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem5CreditsForSubjects[8]+" credits"
            
            
            
        }

        
        /*if subLabelsforsem5.count == 0
        {  for index in (0...sem5Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem5Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem5.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem5Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem5.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem5CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem5.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem5[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem5[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem5[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem5Subjects.count-1)
            {
                
                subLabelsforsem5[index].text = sem5Subjects[index]
                gradeLabelsforsem5[index].text =  sem5Grades[index]
                creditLabelsforsem5[index].text = sem5CreditsForSubjects[index]+"credits"
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }*/
        break
        

       case 3:
        cell.whichSem.text = "Semester 4"
        cell.semGPA.text = sem4GPA
        cell.semCredits.text = sem4Credits
        
        if sem4Subjects.count == 7
        {
            cell.sub1lab.text = sem4Subjects[0]
            cell.sub2lab.text = sem4Subjects[1]
            cell.sub3lab.text = sem4Subjects[2]
            cell.sub4lab.text = sem4Subjects[3]
            cell.sub5lab.text = sem4Subjects[4]
            cell.sub6lab.text = sem4Subjects[5]
            cell.sub7lab.text = sem4Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem4Grades[0]
            cell.grade2lab.text = sem4Grades[1]
            cell.grade3lab.text = sem4Grades[2]
            cell.grade4lab.text = sem4Grades[3]
            cell.grade5lab.text = sem4Grades[4]
            cell.grade6lab.text = sem4Grades[5]
            cell.grade7lab.text = sem4Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem4CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem4CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem4CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem4CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem4CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem4CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem4CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem4Subjects.count == 8{
            cell.sub1lab.text = sem4Subjects[0]
            cell.sub2lab.text = sem4Subjects[1]
            cell.sub3lab.text = sem4Subjects[2]
            cell.sub4lab.text = sem4Subjects[3]
            cell.sub5lab.text = sem4Subjects[4]
            cell.sub6lab.text = sem4Subjects[5]
            cell.sub7lab.text = sem4Subjects[6]
            cell.sub8lab.text = sem4Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem4Grades[0]
            cell.grade2lab.text = sem4Grades[1]
            cell.grade3lab.text = sem4Grades[2]
            cell.grade4lab.text = sem4Grades[3]
            cell.grade5lab.text = sem4Grades[4]
            cell.grade6lab.text = sem4Grades[5]
            cell.grade7lab.text = sem4Grades[6]
            cell.grade8lab.text = sem4Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem4CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem4CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem4CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem4CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem4CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem4CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem4CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem4CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem4Subjects.count == 9{
            cell.sub1lab.text = sem4Subjects[0]
            cell.sub2lab.text = sem4Subjects[1]
            cell.sub3lab.text = sem4Subjects[2]
            cell.sub4lab.text = sem4Subjects[3]
            cell.sub5lab.text = sem4Subjects[4]
            cell.sub6lab.text = sem4Subjects[5]
            cell.sub7lab.text = sem4Subjects[6]
            cell.sub8lab.text = sem4Subjects[7]
            cell.sub9lab.text = sem4Subjects[8]
            
            cell.grade1lab.text = sem4Grades[0]
            cell.grade2lab.text = sem4Grades[1]
            cell.grade3lab.text = sem4Grades[2]
            cell.grade4lab.text = sem4Grades[3]
            cell.grade5lab.text = sem4Grades[4]
            cell.grade6lab.text = sem4Grades[5]
            cell.grade7lab.text = sem4Grades[6]
            cell.grade8lab.text = sem4Grades[7]
            cell.grade9lab.text = sem4Grades[8]
            
            cell.credit1lab.text = sem4CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem4CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem4CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem4CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem4CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem4CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem4CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem4CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem4CreditsForSubjects[8]+" credits"
            
            
            
        }


      /*  if subLabelsforsem4.count == 0
        {  for index in (0...sem4Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem4Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem4.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem1Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem4.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem4CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem4.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem4[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem4[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem4[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem4Subjects.count-1)
            {
                
                subLabelsforsem4[index].text = sem4Subjects[index]
                gradeLabelsforsem4[index].text =  sem4Grades[index]
                creditLabelsforsem4[index].text = sem4CreditsForSubjects[index]+"credits"
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }*/
        break


        
        
       case 2:
        
        
        cell.whichSem.text = "Semester 3"
        cell.semGPA.text = sem3GPA
        cell.semCredits.text = sem3Credits
        
        if sem3Subjects.count == 7
        {
            cell.sub1lab.text = sem3Subjects[0]
            cell.sub2lab.text = sem3Subjects[1]
            cell.sub3lab.text = sem3Subjects[2]
            cell.sub4lab.text = sem3Subjects[3]
            cell.sub5lab.text = sem3Subjects[4]
            cell.sub6lab.text = sem3Subjects[5]
            cell.sub7lab.text = sem3Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem3Grades[0]
            cell.grade2lab.text = sem3Grades[1]
            cell.grade3lab.text = sem3Grades[2]
            cell.grade4lab.text = sem3Grades[3]
            cell.grade5lab.text = sem3Grades[4]
            cell.grade6lab.text = sem3Grades[5]
            cell.grade7lab.text = sem3Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem3CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem3CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem3CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem3CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem3CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem3CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem3CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem3Subjects.count == 8{
            cell.sub1lab.text = sem3Subjects[0]
            cell.sub2lab.text = sem3Subjects[1]
            cell.sub3lab.text = sem3Subjects[2]
            cell.sub4lab.text = sem3Subjects[3]
            cell.sub5lab.text = sem3Subjects[4]
            cell.sub6lab.text = sem3Subjects[5]
            cell.sub7lab.text = sem3Subjects[6]
            cell.sub8lab.text = sem3Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem3Grades[0]
            cell.grade2lab.text = sem3Grades[1]
            cell.grade3lab.text = sem3Grades[2]
            cell.grade4lab.text = sem3Grades[3]
            cell.grade5lab.text = sem3Grades[4]
            cell.grade6lab.text = sem3Grades[5]
            cell.grade7lab.text = sem3Grades[6]
            cell.grade8lab.text = sem3Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem3CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem3CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem3CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem3CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem3CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem3CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem3CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem3CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem3Subjects.count == 9{
            cell.sub1lab.text = sem3Subjects[0]
            cell.sub2lab.text = sem3Subjects[1]
            cell.sub3lab.text = sem3Subjects[2]
            cell.sub4lab.text = sem3Subjects[3]
            cell.sub5lab.text = sem3Subjects[4]
            cell.sub6lab.text = sem3Subjects[5]
            cell.sub7lab.text = sem3Subjects[6]
            cell.sub8lab.text = sem3Subjects[7]
            cell.sub9lab.text = sem3Subjects[8]
            
            cell.grade1lab.text = sem3Grades[0]
            cell.grade2lab.text = sem3Grades[1]
            cell.grade3lab.text = sem3Grades[2]
            cell.grade4lab.text = sem3Grades[3]
            cell.grade5lab.text = sem3Grades[4]
            cell.grade6lab.text = sem3Grades[5]
            cell.grade7lab.text = sem3Grades[6]
            cell.grade8lab.text = sem3Grades[7]
            cell.grade9lab.text = sem3Grades[8]
            
            cell.credit1lab.text = sem3CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem3CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem3CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem3CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem3CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem3CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem3CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem3CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem3CreditsForSubjects[8]+" credits"
            
            
            
        }

        
       /* if subLabelsforsem3.count == 0
        {
            for index in (0...sem3Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
           // textLabel1.font = UIFont.systemFont(ofSize: 14)
            textLabel1.text = sem3Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            
            // textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem3.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            //textLabel2.font = UIFont.systemFont(ofSize: 14)

            textLabel2.text = sem3Grades[index]
            textLabel2.backgroundColor = UIColor.white
            // textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem3.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
           // textLabel3.font = UIFont.systemFont(ofSize: 14)

            textLabel3.text = sem3CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            // textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem3.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem3[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem3[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem3[index])
            
            
            
            
            
            
            
            }
    }
            
            
       else {
            for index in (0...sem3Subjects.count-1)
            {
                
                
                subLabelsforsem3[index].text = String(sem3Subjects[index])!
                gradeLabelsforsem3[index].text =  String(sem3Grades[index])!
                creditLabelsforsem3[index].text = String(sem3CreditsForSubjects[index]+"credits")!
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
        }*/
        break


        
        
       case 1:
        cell.whichSem.text = "Semester 2"
        cell.semGPA.text = sem2GPA
        cell.semCredits.text = sem2Credits
        
        if sem2Subjects.count == 7
        {
            cell.sub1lab.text = sem2Subjects[0]
            cell.sub2lab.text = sem2Subjects[1]
            cell.sub3lab.text = sem2Subjects[2]
            cell.sub4lab.text = sem2Subjects[3]
            cell.sub5lab.text = sem2Subjects[4]
            cell.sub6lab.text = sem2Subjects[5]
            cell.sub7lab.text = sem2Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem2Grades[0]
            cell.grade2lab.text = sem2Grades[1]
            cell.grade3lab.text = sem2Grades[2]
            cell.grade4lab.text = sem2Grades[3]
            cell.grade5lab.text = sem2Grades[4]
            cell.grade6lab.text = sem2Grades[5]
            cell.grade7lab.text = sem2Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem2CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem2CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem2CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem2CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem2CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem2CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem2CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem1Subjects.count == 8{
            cell.sub1lab.text = sem2Subjects[0]
            cell.sub2lab.text = sem2Subjects[1]
            cell.sub3lab.text = sem2Subjects[2]
            cell.sub4lab.text = sem2Subjects[3]
            cell.sub5lab.text = sem2Subjects[4]
            cell.sub6lab.text = sem2Subjects[5]
            cell.sub7lab.text = sem2Subjects[6]
            cell.sub8lab.text = sem2Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem2Grades[0]
            cell.grade2lab.text = sem2Grades[1]
            cell.grade3lab.text = sem2Grades[2]
            cell.grade4lab.text = sem2Grades[3]
            cell.grade5lab.text = sem2Grades[4]
            cell.grade6lab.text = sem2Grades[5]
            cell.grade7lab.text = sem2Grades[6]
            cell.grade8lab.text = sem2Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem2CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem2CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem2CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem2CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem2CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem2CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem2CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem2CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
            
        else if sem1Subjects.count == 9{
            cell.sub1lab.text = sem2Subjects[0]
            cell.sub2lab.text = sem2Subjects[1]
            cell.sub3lab.text = sem2Subjects[2]
            cell.sub4lab.text = sem2Subjects[3]
            cell.sub5lab.text = sem2Subjects[4]
            cell.sub6lab.text = sem2Subjects[5]
            cell.sub7lab.text = sem2Subjects[6]
            cell.sub8lab.text = sem2Subjects[7]
            cell.sub9lab.text = sem2Subjects[8]
            
            cell.grade1lab.text = sem2Grades[0]
            cell.grade2lab.text = sem2Grades[1]
            cell.grade3lab.text = sem2Grades[2]
            cell.grade4lab.text = sem2Grades[3]
            cell.grade5lab.text = sem2Grades[4]
            cell.grade6lab.text = sem2Grades[5]
            cell.grade7lab.text = sem2Grades[6]
            cell.grade8lab.text = sem2Grades[7]
            cell.grade9lab.text = sem2Grades[8]
            
            cell.credit1lab.text = sem2CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem2CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem2CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem2CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem2CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem2CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem2CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem2CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem2CreditsForSubjects[8]+" credits"
            
            
            
        }

      /* if subLabelsforsem2.count == 0
        {
            for index in (0...sem2Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem2Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            
            // textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem2.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem2Grades[index]
            textLabel2.backgroundColor = UIColor.white
            // textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem2.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem2CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            // textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem2.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem2[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem2[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem2[index])
            
            
            
            
            
            
            
            }
    }
            
            
        else {
            for index in (0...sem2Subjects.count-1)
            {
                print(sem2Subjects)
                
                subLabelsforsem2[index].text = sem2Subjects[index]
                gradeLabelsforsem2[index].text =  sem2Grades[index]
                creditLabelsforsem2[index].text = sem2CreditsForSubjects[index]+"credits"
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
        }*/
        break

        
       case 0:
        
        cell.whichSem.text = "Semester 1"
        cell.semGPA.text = sem1GPA
        cell.semCredits.text = sem1Credits
        
        if sem1Subjects.count == 7
        {
            cell.sub1lab.text = sem1Subjects[0]
            cell.sub2lab.text = sem1Subjects[1]
            cell.sub3lab.text = sem1Subjects[2]
            cell.sub4lab.text = sem1Subjects[3]
            cell.sub5lab.text = sem1Subjects[4]
            cell.sub6lab.text = sem1Subjects[5]
            cell.sub7lab.text = sem1Subjects[6]
            cell.sub8lab.text = " "
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem1Grades[0]
            cell.grade2lab.text = sem1Grades[1]
            cell.grade3lab.text = sem1Grades[2]
            cell.grade4lab.text = sem1Grades[3]
            cell.grade5lab.text = sem1Grades[4]
            cell.grade6lab.text = sem1Grades[5]
            cell.grade7lab.text = sem1Grades[6]
            cell.grade8lab.text = " "
            cell.grade9lab.text = " "
            
             cell.credit1lab.text = sem1CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem1CreditsForSubjects[1] + " credits"
             cell.credit3lab.text = sem1CreditsForSubjects[2]+" credits"
             cell.credit4lab.text = sem1CreditsForSubjects[3]+" credits"
             cell.credit5lab.text = sem1CreditsForSubjects[4]+" credits"
             cell.credit6lab.text = sem1CreditsForSubjects[5]+" credits"
             cell.credit7lab.text = sem1CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = " "
            cell.credit9lab.text = " "
            
            
        }
        
        else if sem1Subjects.count == 8{
            cell.sub1lab.text = sem1Subjects[0]
            cell.sub2lab.text = sem1Subjects[1]
            cell.sub3lab.text = sem1Subjects[2]
            cell.sub4lab.text = sem1Subjects[3]
            cell.sub5lab.text = sem1Subjects[4]
            cell.sub6lab.text = sem1Subjects[5]
            cell.sub7lab.text = sem1Subjects[6]
            cell.sub8lab.text = sem1Subjects[7]
            cell.sub9lab.text = " "
            
            cell.grade1lab.text = sem1Grades[0]
            cell.grade2lab.text = sem1Grades[1]
            cell.grade3lab.text = sem1Grades[2]
            cell.grade4lab.text = sem1Grades[3]
            cell.grade5lab.text = sem1Grades[4]
            cell.grade6lab.text = sem1Grades[5]
            cell.grade7lab.text = sem1Grades[6]
            cell.grade8lab.text = sem1Grades[7]
            cell.grade9lab.text = " "
            
            cell.credit1lab.text = sem1CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem1CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem1CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem1CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem1CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem1CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem1CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem1CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = " "
            
            
        }
        
        else if sem1Subjects.count == 9{
            cell.sub1lab.text = sem1Subjects[0]
            cell.sub2lab.text = sem1Subjects[1]
            cell.sub3lab.text = sem1Subjects[2]
            cell.sub4lab.text = sem1Subjects[3]
            cell.sub5lab.text = sem1Subjects[4]
            cell.sub6lab.text = sem1Subjects[5]
            cell.sub7lab.text = sem1Subjects[6]
            cell.sub8lab.text = sem1Subjects[7]
            cell.sub9lab.text = sem1Subjects[8]
            
            cell.grade1lab.text = sem1Grades[0]
            cell.grade2lab.text = sem1Grades[1]
            cell.grade3lab.text = sem1Grades[2]
            cell.grade4lab.text = sem1Grades[3]
            cell.grade5lab.text = sem1Grades[4]
            cell.grade6lab.text = sem1Grades[5]
            cell.grade7lab.text = sem1Grades[6]
            cell.grade8lab.text = sem1Grades[7]
            cell.grade9lab.text = sem1Grades[8]
            
            cell.credit1lab.text = sem1CreditsForSubjects[0] + " credits"
            cell.credit2lab.text = sem1CreditsForSubjects[1] + " credits"
            cell.credit3lab.text = sem1CreditsForSubjects[2]+" credits"
            cell.credit4lab.text = sem1CreditsForSubjects[3]+" credits"
            cell.credit5lab.text = sem1CreditsForSubjects[4]+" credits"
            cell.credit6lab.text = sem1CreditsForSubjects[5]+" credits"
            cell.credit7lab.text = sem1CreditsForSubjects[6]+" credits"
            cell.credit8lab.text = sem1CreditsForSubjects[7]+" credits"
            cell.credit9lab.text = sem1CreditsForSubjects[8]+" credits"

            
            
        }

        
       /*if subLabelsforsem1.count == 0
        {
            for index in (0...sem1Subjects.count-1)
        {
            
               let textLabel1 = UILabel()
            textLabel1.text = sem1Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            
           // textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem1.append(textLabel1)
           // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem1Grades[index]
            textLabel2.backgroundColor = UIColor.white
           // textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem1.append(textLabel2)
         //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem1CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
           // textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
           // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem1.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem1[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem1[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem1[index])
            
            
            
            
            
            
            
            }
}
        
        
        else {
            for index in (0...sem1Subjects.count-1)
            {
                
                
                subLabelsforsem1[index].text = sem1Subjects[index]
                gradeLabelsforsem1[index].text =  sem1Grades[index]
                creditLabelsforsem1[index].text = sem1CreditsForSubjects[index]+"credits"

              
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
        }*/
        break

       default: print("nope")
    }
    
    return cell
   }
    @IBOutlet var gradeTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    cgpaLabel.text = String(CGPA)
        totalCreditsLabel.text = String(sumOfCredits)
        highestGPALabel.text = String(maxGPA)
        lowestGPALabel.text = String(leastGPA)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
