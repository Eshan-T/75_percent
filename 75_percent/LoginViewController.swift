
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

class LoginViewController: UIViewController, UITextFieldDelegate {
    var opQueue = OperationQueue()

    @IBOutlet var logInButton: UIButton!
    @IBOutlet var regNumber: UITextField!
    @IBOutlet var dateOfBirth: UITextField!
    
    @IBAction func userTyping(_ sender: Any) {
        //regNoOfDigits = regNoOfDigits + 1
        if regNumber.text?.characters.count != 9
        
        {
            regNumberCheck.text = "Invalid format"
            regNumberCheck.textColor = UIColor.red
            loginStatus.text = ""
        
            
        }
        else
        {
        
            regNumberCheck.text = ""
        }
    }
    
    @IBAction func usertypingDOB(_ sender: Any) {
        
        
       
        
        
        if (dateOfBirth.text?.characters.count)! != 10
        {
            
            DOBCheck.text = "wrong"
        }
        else {
            
            
            if (dateOfBirth.text?.characters.count)! > 8
            { let str = dateOfBirth.text!
                let index = str.index(str.startIndex, offsetBy: 4)
                let index2 = str.index(str.startIndex, offsetBy: 7)
                if str[index] != "-" || str[index2] != "-"
                {    
                    DOBCheck.text = "wrong"
                    
                    
                }
                else{
                    DOBCheck.text = ""
                }
                
            }
        }
        
    }
    
    
    
    @IBOutlet var DOBCheck: UILabel!
    
    @IBOutlet var regNumberCheck: UILabel!
    
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
                OperationQueue.main.addOperation{
                  
               /*let alert = UIAlertController(title: "Alert", message: "You seem to be offline. Please check your internet connection", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    MBProgressHUD.hideAllHUDs(for: self.view, animated:true)*/
                    
                    
                        self.loginStatus.text = "You seem to be offline.  "
                        self.loginStatus.textColor = UIColor.red
                        MBProgressHUD.hideAllHUDs(for: self.view, animated:true)
                        let defaults = UserDefaults.standard
                        
                        
                        if let name = defaults.string(forKey: "userRegNumber"){
                            var stringData = defaults.string(forKey: "userData")
                            let dataSaved = stringData?.data(using: .utf8)
                            var date = defaults.string(forKey: "timeSaved")
                            let alert = UIAlertController(title: "Alert", message: "You seem to be offline. We have a cached copy updated on \(date!). Want to load that? ", preferredStyle: UIAlertControllerStyle.alert)
                            
                            let YES = UIAlertAction(title: "YES", style: UIAlertActionStyle.default) {
                                UIAlertAction in
                                self.process(data: dataSaved!)
                                
                                
                                
                                
                            }
                            let cancelAction = UIAlertAction(title: "No. Log in as a different user", style: UIAlertActionStyle.default) {
                                UIAlertAction in
                                NSLog("Cancel Pressed")
                            }
                            
                            // Add the actions
                            
                            alert.addAction(cancelAction)
                            alert.addAction(YES)
                            alert.addAction(cancelAction)
                            
                            self.present(alert, animated: true, completion: nil)
                        }
                    
                    
                    
}
                    
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
            if responseString == "{\"status\": false, \"Description\": \"Invalid login\"}"
                
            {
                OperationQueue.main.addOperation{
                   self.loginStatus.text = "Invalid Login Details "
                    self.loginStatus.textColor = UIColor.red
                    MBProgressHUD.hideAllHUDs(for: self.view, animated:true)

                }
            
                
                
            }
            
            else if responseString == "{\"status\":False, \"Description\": \"Not Available\"}" || responseString == "{\"status\":False, \"Description\": \"Not Available2\"}"
            {
                
                OperationQueue.main.addOperation{
                    self.loginStatus.text = "Websis down "
                    self.loginStatus.textColor = UIColor.red
                    MBProgressHUD.hideAllHUDs(for: self.view, animated:true)
                    let defaults = UserDefaults.standard
                    
                    
                    if let name = defaults.string(forKey: "userRegNumber"){
                      var stringData = defaults.string(forKey: "userData")
                        let dataSaved = stringData?.data(using: .utf8)
                        var date = defaults.string(forKey: "timeSaved")
                    let alert = UIAlertController(title: "Alert", message: "Websis seems to be down. We have a cached copy updated on \(date). Want to load that? ", preferredStyle: UIAlertControllerStyle.alert)
                    
                    let YES = UIAlertAction(title: "YES", style: UIAlertActionStyle.default) {
                        UIAlertAction in
                        self.process(data: dataSaved!)
                        
                        
                        
                        
                    }
                    let cancelAction = UIAlertAction(title: "Log in as different user", style: UIAlertActionStyle.default) {
                        UIAlertAction in
                        NSLog("Cancel Pressed")
                    }
                    
                    // Add the actions
                    
                    alert.addAction(cancelAction)
                    alert.addAction(YES)

                    self.present(alert, animated: true, completion: nil)
                    }
                }

            
            
            
            }
                
            else if responseString?.characters.first == "<"
            {
                OperationQueue.main.addOperation{
                    self.loginStatus.text = "Websis down "
                    self.loginStatus.textColor = UIColor.red
                    MBProgressHUD.hideAllHUDs(for: self.view, animated:true)
                    let defaults = UserDefaults.standard
                    
                    
                    if let name = defaults.string(forKey: "userRegNumber"){
                        var stringData = defaults.string(forKey: "userData")
                        let dataSaved = stringData?.data(using: .utf8)
                        var date = defaults.string(forKey: "timeSaved")
                        let alert = UIAlertController(title: "Error", message: "Encuontered an error. We have a cached copy updated on \(date!). Want to load that? ", preferredStyle: UIAlertControllerStyle.alert)
                        
                        let YES = UIAlertAction(title: "YES", style: UIAlertActionStyle.default) {
                            UIAlertAction in
                            self.process(data: dataSaved!)
                            
                            
                            
                            
                        }
                        let cancelAction = UIAlertAction(title: "Log in as different user", style: UIAlertActionStyle.default) {
                            UIAlertAction in
                            NSLog("Cancel Pressed")
                        }
                        
                        // Add the actions
                        
                        alert.addAction(cancelAction)
                        alert.addAction(YES)
                        
                        self.present(alert, animated: true, completion: nil)
                    }
                }
                

                
            }

            
            else{
                
                
                
                self.process(data: data)
                let defaults = UserDefaults.standard
                defaults.set(responseString, forKey: "userData")
                defaults.set(self.regNumber.text, forKey: "userRegNumber")
                defaults.set(self.dateOfBirth.text, forKey: "userDOB")
                var currentdate = Date()
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "dd MMM yyyy HH:mm:ss "
                var newDate = dateFormatter.string(from: currentdate)
                defaults.set(newDate , forKey: "timeSaved")

            }
        
        
        
        
        
        
        }
        task.resume()
        
        
     
        
    }
    @IBOutlet var loginStatus: UILabel!
    
    func process ( data :Data)
    {
        
            var json = JSON(data: data)
            studName = json["User Data"]["Name"].string!
            let defaults = UserDefaults.standard
            defaults.set(studName, forKey: "userName")
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
            
            //for grade stats
            
            var temp3: Dictionary = json["Grades"]["Details"].dictionary!
            numberOfSems =  temp3.count
            switch numberOfSems{
            case 8 :
                var sem8noOfSubs = json["Grades"]["Details"]["Semester 8"]["Grades"].count
                for index in 0...sem8noOfSubs-1
                {
                    sem8Subjects.append(json["Grades"]["Details"]["Semester 8"]["Grades"][index]["Subject"].string!)
                    sem8CreditsForSubjects.append(json["Grades"]["Details"]["Semester 8"]["Grades"][index]["Credits"].string!)
                    sem8Grades.append(json["Grades"]["Details"]["Semester 8"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                    
                }
                sem8GPA = json["Grades"]["Details"]["Semester 8"]["GPA"].string!
                sem8Credits = json["Grades"]["Details"]["Semester 8"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem8GPA)!
                sumOfCredits = sumOfCredits + Int(sem8Credits)!
                var sem8GPADouble = Double(sem8GPA)!
                if sem8GPADouble > maxGPA
                {
                    maxGPA = sem8GPADouble
                    
                    
                    
                }
                
                if sem8GPADouble < leastGPA
                {
                    leastGPA = sem8GPADouble
                    
                    
                }
                fallthrough
            case 7 :
                var sem7noOfSubs = json["Grades"]["Details"]["Semester 7"]["Grades"].count
                for index in 0...sem7noOfSubs-1
                {
                    sem7Subjects.append(json["Grades"]["Details"]["Semester 7"]["Grades"][index]["Subject"].string!)
                    sem7CreditsForSubjects.append(json["Grades"]["Details"]["Semester 7"]["Grades"][index]["Credits"].string!)
                    sem7Grades.append(json["Grades"]["Details"]["Semester 7"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem7GPA = json["Grades"]["Details"]["Semester 7"]["GPA"].string!
                sem7Credits = json["Grades"]["Details"]["Semester 7"]["NoOfCredits"].string!
                
                sumOfGpas = sumOfGpas + Double(sem7GPA)!
                sumOfCredits = sumOfCredits + Int(sem7Credits)!
                
                var sem7GPADouble = Double(sem7GPA)!
                if sem7GPADouble > maxGPA
                {
                    maxGPA = sem7GPADouble
                    
                    
                    
                }
                
                if sem7GPADouble < leastGPA
                {
                    leastGPA = sem7GPADouble
                    
                    
                }
                
                
                fallthrough
                
            case 6 :
                var sem6noOfSubs = json["Grades"]["Details"]["Semester 6"]["Grades"].count
                for index in 0...sem6noOfSubs-1
                {
                    sem6Subjects.append(json["Grades"]["Details"]["Semester 6"]["Grades"][index]["Subject"].string!)
                    sem6CreditsForSubjects.append(json["Grades"]["Details"]["Semester 6"]["Grades"][index]["Credits"].string!)
                    sem6Grades.append(json["Grades"]["Details"]["Semester 6"]["Grades"][index]["Grade"].string!)
                    
                    
                }
                sem6GPA = json["Grades"]["Details"]["Semester 6"]["GPA"].string!
                sem6Credits = json["Grades"]["Details"]["Semester 6"]["NoOfCredits"].string!
                
                sumOfGpas = sumOfGpas + Double(sem6GPA)!
                sumOfCredits = sumOfCredits + Int(sem6Credits)!
                var sem6GPADouble = Double(sem6GPA)!
                if sem6GPADouble > maxGPA
                {
                    maxGPA = sem6GPADouble
                    
                    
                    
                }
                
                if sem6GPADouble < leastGPA
                {
                    leastGPA = sem6GPADouble
                    
                    
                }
                
                
                fallthrough
                
            case 5 :
                var sem5noOfSubs = json["Grades"]["Details"]["Semester 5"]["Grades"].count
                for index in 0...sem5noOfSubs-1
                {
                    sem5Subjects.append(json["Grades"]["Details"]["Semester 5"]["Grades"][index]["Subject"].string!)
                    sem5CreditsForSubjects.append(json["Grades"]["Details"]["Semester 5"]["Grades"][index]["Credits"].string!)
                    sem5Grades.append(json["Grades"]["Details"]["Semester 5"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem5GPA = json["Grades"]["Details"]["Semester 5"]["GPA"].string!
                sem5Credits = json["Grades"]["Details"]["Semester 5"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem5GPA)!
                sumOfCredits = sumOfCredits + Int(sem5Credits)!
                var sem5GPADouble = Double(sem5GPA)!
                if sem5GPADouble > maxGPA
                {
                    maxGPA = sem5GPADouble
                    
                    
                    
                }
                
                if sem5GPADouble < leastGPA
                {
                    leastGPA = sem5GPADouble
                    
                    
                }
                
                
                fallthrough
                
            case 4 :
                var sem4noOfSubs = json["Grades"]["Details"]["Semester 4"]["Grades"].count
                for index in 0...sem4noOfSubs-1
                {
                    sem4Subjects.append(json["Grades"]["Details"]["Semester 4"]["Grades"][index]["Subject"].string!)
                    sem4CreditsForSubjects.append(json["Grades"]["Details"]["Semester 4"]["Grades"][index]["Credits"].string!)
                    sem4Grades.append(json["Grades"]["Details"]["Semester 4"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem4GPA = json["Grades"]["Details"]["Semester 4"]["GPA"].string!
                sem4Credits = json["Grades"]["Details"]["Semester 4"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem4GPA)!
                sumOfCredits = sumOfCredits + Int(sem4Credits)!
                var sem4GPADouble = Double(sem4GPA)!
                if sem4GPADouble > maxGPA
                {
                    maxGPA = sem4GPADouble
                    
                    
                    
                }
                
                if sem4GPADouble < leastGPA
                {
                    leastGPA = sem4GPADouble
                    
                    
                }
                
                
                fallthrough
            case 3 :
                var sem3noOfSubs = json["Grades"]["Details"]["Semester 3"]["Grades"].count
                for index in 0...sem3noOfSubs-1
                {
                    sem3Subjects.append(json["Grades"]["Details"]["Semester 3"]["Grades"][index]["Subject"].string!)
                    sem3CreditsForSubjects.append(json["Grades"]["Details"]["Semester 3"]["Grades"][index]["Credits"].string!)
                    sem3Grades.append(json["Grades"]["Details"]["Semester 3"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem3GPA = json["Grades"]["Details"]["Semester 3"]["GPA"].string!
                sem3Credits = json["Grades"]["Details"]["Semester 3"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem3GPA)!
                sumOfCredits = sumOfCredits + Int(sem3Credits)!
                var sem3GPADouble = Double(sem3GPA)!
                if sem3GPADouble > maxGPA
                {
                    maxGPA = sem3GPADouble
                    
                    
                    
                }
                
                if sem3GPADouble < leastGPA
                {
                    leastGPA = sem3GPADouble
                    
                    
                }
                
                
                fallthrough
                
            case 2:
                var sem2noOfSubs = json["Grades"]["Details"]["Semester 2"]["Grades"].count
                for index in 0...sem2noOfSubs-1
                {
                    sem2Subjects.append(json["Grades"]["Details"]["Semester 2"]["Grades"][index]["Subject"].string!)
                    sem2CreditsForSubjects.append(json["Grades"]["Details"]["Semester 2"]["Grades"][index]["Credits"].string!)
                    sem2Grades.append(json["Grades"]["Details"]["Semester 2"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem2GPA = json["Grades"]["Details"]["Semester 2"]["GPA"].string!
                sem2Credits = json["Grades"]["Details"]["Semester 2"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem2GPA)!
                sumOfCredits = sumOfCredits + Int(sem2Credits)!
                var sem2GPADouble = Double(sem2GPA)!
                if sem2GPADouble > maxGPA
                {
                    maxGPA = sem2GPADouble
                    
                    
                    
                }
                
                if sem2GPADouble < leastGPA
                {
                    leastGPA = sem2GPADouble
                    
                    
                }
                
                
                fallthrough
                
            case 1:
                var sem1noOfSubs = json["Grades"]["Details"]["Semester 1"]["Grades"].count
                for index in 0...sem1noOfSubs-1
                {
                    sem1Subjects.append(json["Grades"]["Details"]["Semester 1"]["Grades"][index]["Subject"].string!)
                    sem1CreditsForSubjects.append(json["Grades"]["Details"]["Semester 1"]["Grades"][index]["Credits"].string!)
                    sem1Grades.append(json["Grades"]["Details"]["Semester 1"]["Grades"][index]["Grade"].string!)
                    
                    
                    
                }
                sem1GPA = json["Grades"]["Details"]["Semester 1"]["GPA"].string!
                sem1Credits = json["Grades"]["Details"]["Semester 1"]["NoOfCredits"].string!
                sumOfGpas = sumOfGpas + Double(sem1GPA)!
                sumOfCredits = sumOfCredits + Int(sem1Credits)!
                var sem1GPADouble = Double(sem1GPA)!
                if sem1GPADouble > maxGPA
                {
                    maxGPA = sem1GPADouble
                    
                    
                    
                }
                
                if sem1GPADouble < leastGPA
                {
                    leastGPA = sem1GPADouble
                    
                    
                }
                
                
                
            default :
                print("nope" )
            }
            
            
            
            
            /*print(attendanceSubjectNames)
             print(attendanceClassesTaken)
             print(attendanceClassesAttended)
             print(attendanceClassesBunked)
             print(attendancePercentage)
             print(attendanceDate)*/
            
            CGPA = sumOfGpas/Double(numberOfSems)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                MBProgressHUD.hideAllHUDs(for: self.view, animated:true)
                
                self.performSegue(withIdentifier: "mainsegue", sender: nil)
                
            
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let defaults = UserDefaults.standard
       
        
       if let name = defaults.string(forKey: "userName") {
        print("lol")
        
       let dataSaved = name.data(using: .utf8)
        let date = defaults.string(forKey: "userData")
        let data = date?.data(using: .utf8)
        let alert = UIAlertController(title: "Let's make this faster", message: "Sign in as \(name) ? ", preferredStyle: UIAlertControllerStyle.alert)
        
        let YES = UIAlertAction(title: "Yes", style: UIAlertActionStyle.default) {
            UIAlertAction in
            //self.process(data: data!)
             self.regNumber.text = defaults.string(forKey: "userRegNumber")
            self.dateOfBirth.text = defaults.string(forKey: "userDOB")
            self.logInButton.sendActions(for: .touchUpInside)
            


        }
        let cancelAction = UIAlertAction(title: "No. Different account.", style: UIAlertActionStyle.default) {
            UIAlertAction in
            NSLog("Cancel Pressed")
        }
        
        // Add the actions
         alert.addAction(YES)
        alert.addAction(cancelAction)
        
        
        
        
        
        
        
 
        
        self.opQueue.addOperation {
            // Put queue to the main thread which will update the UI
            OperationQueue.main.addOperation({
                self.present(alert, animated: true, completion: nil)
            })
        }
       
        
        }
  regNumber.delegate = self
        

        
        // Do any additional setup after loading the view.
    }

    
    
    func textFieldDidChange(regNumber: UITextField) {
        regNumberCheck.text = "shit"
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
