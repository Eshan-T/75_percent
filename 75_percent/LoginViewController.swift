//
//  LoginViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit
import SwiftyJSON

class LoginViewController: UIViewController {

    @IBOutlet var regNumber: UITextField!
    @IBOutlet var dateOfBirth: UITextField!
    @IBAction func loginButton(_ sender: Any) {
        
        
        var request = URLRequest(url: URL(string: "https://tacos.adityawalvekar.com/show")!)
        request.httpMethod = "POST"
       
        let postString = "regno=\(regNumber.text!)&bdate=\(dateOfBirth.text!)"
        request.httpBody = postString.data(using: .utf8)
       
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {                                                 // check for fundamental networking error
                print("error=\(error)")
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200 {           // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(response)")
            }
            
            let responseString = String(data: data, encoding: .utf8)
            print("responseString = \(responseString!)")
                                        // final response
            var json = JSON(data: data)
            studName = json["User Data"]["Name"].string!
            studBranch = json["User Data"]["Branch"].string!
            studRegNo = json["User Data"]["Registration Number"].string!
            var crap: Array = json["Attendance"].array!
            attendanceSubjectsNumber = crap.count
            for index in 0...(crap.count-1)
            {  var temp: String = json["Attendance"][index]["Name"].string!
                
                attendanceSubjectNames.append(temp)
                attendanceClassesTaken.append(json["Attendance"][index]["Classes"].string!)
                attendanceClassesAttended.append(json["Attendance"][index]["Attended"].string!)
                attendanceClassesBunked.append(json["Attendance"][index]["Absent"].string!)
                attendancePercentage.append(json["Attendance"][index]["%"].string!)
                attendanceDate.append(json["Attendance"][index]["Updated"].string!)
                
            }
        
        print(attendanceSubjectNames)
            print(attendanceClassesTaken)
            print(attendanceClassesAttended)
            print(attendanceClassesBunked)
            print(attendancePercentage)
            print(attendanceDate)
            

        }
        task.resume()
        
        performSegue(withIdentifier: "mainsegue", sender: nil)
     
     
        
        
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
