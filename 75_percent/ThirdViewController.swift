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
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfSems
   }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return  44;
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CellCGPA", for: indexPath)       as! gradeTableViewCell
       switch indexPath.row
       {
        
       case 7 :
        
        for index in (0...sem8Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem8Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem8Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem8CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        
        break
        
        
       case 6:
        
        
        for index in (0...sem7Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem7Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem7Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem7CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        break

        
       case 5:
        
        
        for index in (0...sem6Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem6Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem6Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem6CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        break

        
       case 4:
        
        
        for index in (0...sem5Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem5Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem5Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem5CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        break

       case 3:
        
        for index in (0...sem8Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem4Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem4Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem4CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        
        break

        
        
       case 2:
        
        for index in (0...sem3Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem3Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem3Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem3CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        
        break


        
        
       case 1:
        
        
        for index in (0...sem2Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem2Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem2Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem2CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
        }
        break

        
       case 0:
        
        
        for index in (0...sem1Subjects.count-1)
        {
            let textLabel1 = UILabel()
            textLabel1.text = sem1Subjects[index]
            textLabel1.backgroundColor = UIColor.white
            textLabel1.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel1.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel2 = UILabel()
            textLabel2.text = sem1Grades[index]
            textLabel2.backgroundColor = UIColor.white
            textLabel2.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel2.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            let textLabel3 = UILabel()
            textLabel3.text = sem1CreditsForSubjects[index]
            textLabel3.backgroundColor = UIColor.white
            textLabel3.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
            textLabel3.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
            
            
            
            
            cell.subjectListView.addArrangedSubview(textLabel1)
            cell.gradeListView.addArrangedSubview(textLabel2)
            cell.creditListView.addArrangedSubview(textLabel3)
            
            
            
            
            
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
        // Do any additional setup after loading the view.
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
