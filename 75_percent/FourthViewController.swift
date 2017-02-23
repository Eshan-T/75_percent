//
//  FourthViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var profileName: UILabel!
    
    @IBOutlet var profileRegNo: UILabel!
    
    @IBOutlet var profileBranch: UILabel!
    

    
    @IBAction func logout(_ sender: Any) {
        
        
//        UserDefaults.standard.removeObject(forKey: "userData")
//        sem1Subjects.removeAll()
//        sem1CreditsForSubjects.removeAll()
//        sem1Grades.removeAll()
//        sem2Subjects.removeAll()
//        sem2CreditsForSubjects.removeAll()
//        sem2Grades.removeAll()
//        sem3Subjects.removeAll()
//        sem3CreditsForSubjects.removeAll()
//        sem3Grades.removeAll()
//        sem4Subjects.removeAll()
//        sem4CreditsForSubjects.removeAll()
//        sem4Grades.removeAll()
//        sem5Subjects.removeAll()
//        sem5CreditsForSubjects.removeAll()
//        sem5Grades.removeAll()
//        sem6Subjects.removeAll()
//        sem6CreditsForSubjects.removeAll()
//        sem6Grades.removeAll()
//        sem7Subjects.removeAll()
//        sem7CreditsForSubjects.removeAll()
//        sem7Grades.removeAll()
        
        
        
    }
    
    @IBAction func ratePress(_ sender: Any) {
        
        rateApp(appId: "id959379869") { success in
            print("RateApp \(success)")
        }
        
           }
    
    func rateApp(appId: String, completion: @escaping ((_ success: Bool)->())) {
        guard let url = URL(string : "itms-apps://itunes.apple.com/app/id1198992897") else {
            completion(false)
            return
        }
        guard #available(iOS 10, *) else {
            completion(UIApplication.shared.openURL(url))
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: completion)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     profileName.text = studName
        profileRegNo.text = studRegNo
        profileBranch.text = studBranch
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
