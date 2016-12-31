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
