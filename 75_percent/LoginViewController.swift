//
//  LoginViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit
import SwiftyJSON
import MBProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet var regNumber: UITextField!
    @IBOutlet var dateOfBirth: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        
        MBProgressHUD.showAdded(to: self.view, animated: true)

        var request = URLRequest(url: URL(string: "https://tacos.adityawalvekar.com/show")!)
        request.httpMethod = "POST"
       
        let postString = "regno=\(regNumber.text!)&bdate=\(dateOfBirth.text!)"
        request.httpBody = postString.data(using: .utf8)
       
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            
          //1
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print("error=\(error)")
                return
            }
         //2
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(response)")
            }
         //main
            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(responseString!)")
                                        // final response
            var json = JSON(data: data)
            studName = json["User Data"]["Name"].string!
            studBranch = json["User Data"]["Branch"].string!
            studRegNo = json["User Data"]["Registration Number"].string!
            var crap: Array = json["Attendance"].array!
            attendanceSubjectsNumber = crap.count
            
            //for attendance
            for index in 0...(crap.count-1)
            {  var temp: String = json["Attendance"][index]["Name"].string!
                
                attendanceSubjectNames.append(temp)
                attendanceClassesTaken.append(json["Attendance"][index]["Classes"].string!)
                attendanceClassesAttended.append(json["Attendance"][index]["Attended"].string!)
                attendanceClassesBunked.append(json["Attendance"][index]["Absent"].string!)
                attendancePercentage.append(json["Attendance"][index]["%"].string!)
                attendanceDate.append(json["Attendance"][index]["Updated"].string!)
                
            }
            
            //for marks
            var marksview: Dictionary = json["Scores"].dictionary!
            var tempp: Array = json["Scores"]["Internal Assesment 1"].array!
            numberOfInternallyMarkedSubjects = tempp.count
            numberOfAssessments = marksview.count
                if numberOfAssessments == 1
                {    for index1 in 0...numberOfInternallyMarkedSubjects-1 {
                    marksSessionalOneSubject.append(json["Scores"]["Internal Assesment 1"][index1]["Course"].string!)
                    marksSessionalOneSubjectCode.append(json["Scores"]["Internal Assesment 1"][index1]["Course Code"].string!)
                    marksSessionalOneMarks.append(json["Scores"]["Internal Assesment 1"][index1]["Marks"].string!)
                    }}
                else if  numberOfAssessments == 2
                {  for index2 in 0...numberOfInternallyMarkedSubjects-1 {
                    marksSessionalOneSubject.append(json["Scores"]["Internal Assesment 1"][index2]["Course"].string!)
                    marksSessionalOneSubjectCode.append(json["Scores"]["Internal Assesment 1"][index2]["Course Code"].string!)
                    marksSessionalOneMarks.append(json["Scores"]["Internal Assesment 1"][index2]["Marks"].string!)
                    }
                    for index2 in 0...numberOfInternallyMarkedSubjects-1 {
                        marksSessionalTwoSubject.append(json["Scores"]["Internal Assesment 2"][index2]["Course"].string!)
                        marksSessionalTwoSubjectCode.append(json["Scores"]["Internal Assesment 2"][index2]["Course Code"].string!)
                        marksSessionalTwoMarks.append(json["Scores"]["Internal Assesment 2"][index2]["Marks"].string!)
                    }
                    
                }
                else if numberOfAssessments == 3
                {
                    for index3 in 0...numberOfInternallyMarkedSubjects-1 {
                        marksSessionalOneSubject.append(json["Scores"]["Internal Assesment 1"][index3]["Course"].string!)
                        marksSessionalOneSubjectCode.append(json["Scores"]["Internal Assesment 1"][index3]["Course Code"].string!)
                        marksSessionalOneMarks.append(json["Scores"]["Internal Assesment 1"][index3]["Marks"].string!)
                        print(marksSessionalOneMarks)
                    }
                    for index3 in 0...numberOfInternallyMarkedSubjects-1 {
                        marksSessionalTwoSubject.append(json["Scores"]["Internal Assesment 2"][index3]["Course"].string!)
                        marksSessionalTwoSubjectCode.append(json["Scores"]["Internal Assesment 2"][index3]["Course Code"].string!)
                        marksSessionalTwoMarks.append(json["Scores"]["Internal Assesment 2"][index3]["Marks"].string!)
                    }

                    for index3 in 0...numberOfInternallyMarkedSubjects-1 {
                        marksSessionalThreeSubject.append(json["Scores"]["Internal Assesment 3"][index3]["Course"].string!)
                        marksSessionalThreeSubjectCode.append(json["Scores"]["Internal Assesment 3"][index3]["Course Code"].string!)
                        marksSessionalThreeMarks.append(json["Scores"]["Internal Assesment 3"][index3]["Marks"].string!)
                    }

            }
                
           
            
        
        /*print(attendanceSubjectNames)
            print(attendanceClassesTaken)
            print(attendanceClassesAttended)
            print(attendanceClassesBunked)
            print(attendancePercentage)
            print(attendanceDate)*/
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                 MBProgressHUD.hideAllHUDs(for: self.view, animated:true)
                
                self.performSegue(withIdentifier: "mainsegue", sender: nil)
                
            }

        }
        task.resume()
        
        
     
        
    }
    @IBOutlet var loginStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
