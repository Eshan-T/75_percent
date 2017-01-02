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

        
        if subLabelsforsem8.count == 0
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
            
            
            
            
            
        }
        break
        
        
        
       case 6:
        cell.whichSem.text = "Semester 7"
        cell.semGPA.text = sem7GPA
        cell.semCredits.text = sem7Credits

        
        if subLabelsforsem7.count == 0
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
            
            
            
            
            
        }
        break
        

        
       case 5:
        
        cell.whichSem.text = "Semester 6"
        cell.semGPA.text = sem6GPA
        cell.semCredits.text = sem6Credits

        
        if subLabelsforsem6.count == 0
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
            
            
            
            
            
        }
        break
        


        
       case 4:
        
        cell.whichSem.text = "Semester 5"
        cell.semGPA.text = sem5GPA
        cell.semCredits.text = sem5Credits

        
        if subLabelsforsem5.count == 0
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
            
            
            
            
            
        }
        break
        

       case 3:
        cell.whichSem.text = "Semester 4"
        cell.semGPA.text = sem4GPA
        cell.semCredits.text = sem4Credits

        if subLabelsforsem4.count == 0
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
            
            
            
            
            
        }
        break


        
        
       case 2:
        
        cell.whichSem.text = "Semester 3"
        cell.semGPA.text = sem3GPA
        cell.semCredits.text = sem3Credits

        if subLabelsforsem3.count == 0
        {  for index in (0...sem3Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem3Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem3.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem3Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem3.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem3CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem3.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem3[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem3[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem3[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem3Subjects.count-1)
            {
                
                subLabelsforsem3[index].text = sem3Subjects[index]
                gradeLabelsforsem3[index].text =  sem3Grades[index]
                creditLabelsforsem3[index].text = sem3CreditsForSubjects[index]+"credits"

                
                
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }
        break


        
        
       case 1:
        cell.whichSem.text = "Semester 2"
        cell.semGPA.text = sem2GPA
        cell.semCredits.text = sem2Credits

        
        if subLabelsforsem2.count == 0
        {  for index in (0...sem2Subjects.count-1)
        {
            
            let textLabel1 = UILabel()
            textLabel1.text = sem2Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.font = UIFont.systemFont(ofSize: 11)
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem2.append(textLabel1)
            // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem2Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.font = UIFont.systemFont(ofSize: 11)

            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem2.append(textLabel2)
            //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem2CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.font = UIFont.systemFont(ofSize: 11)

            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem2.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem2[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem2[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem2[index])
            
            
            
            
            
            
            
            }}
            
            
        else {
            for index in (0...sem2Subjects.count-1)
            {
                
                subLabelsforsem2[index].text = sem2Subjects[index]
                gradeLabelsforsem2[index].text =  sem2Grades[index]
                creditLabelsforsem2[index].text = sem2CreditsForSubjects[index]+"credits"

                
                print(subLabelsforsem2[index].text)
                
                
                
                
                
                
                
                
            }
            
            
            
            
            
        }
        break

        
       case 0:
        
        cell.whichSem.text = "Semester 1"
        cell.semGPA.text = sem1GPA
        cell.semCredits.text = sem1Credits

        
        if subLabelsforsem1.count == 0
        {  for index in (0...sem1Subjects.count-1)
        {
            
               let textLabel1 = UILabel()
            textLabel1.text = sem1Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            subLabelsforsem1.append(textLabel1)
           // textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem1Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            gradeLabelsforsem1.append(textLabel2)
         //   textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem1CreditsForSubjects[index]+"credits"
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
           // textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            creditLabelsforsem1.append(textLabel3)
            
            
            
            
            cell.subjectListView.addArrangedSubview(subLabelsforsem1[index])
            cell.gradeListView.addArrangedSubview(gradeLabelsforsem1[index])
            cell.creditListView.addArrangedSubview(creditLabelsforsem1[index])
            
            
            
            
            
            
            
            }}
        
        
        else {
            for index in (0...sem1Subjects.count-1)
            {
                print(sem1Subjects)
                
                subLabelsforsem1[index].text = sem1Subjects[index]
                gradeLabelsforsem1[index].text =  sem1Grades[index]
                creditLabelsforsem1[index].text = sem1CreditsForSubjects[index]+"credits"

              
                
                
                
                
                
                
                
                
                
            }
            
            
            
            
        }
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
