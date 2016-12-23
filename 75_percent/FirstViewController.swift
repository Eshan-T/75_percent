//
//  FirstViewController.swift
//  75_percent
//
//  Created by Eshan trivedi on 21/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet var attendanceTable: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellAttendance", for: indexPath)       as! attendanceTableViewCell
        cell.classBunked.text = "frfrW"
      //  cell.classBunked.text = attendanceClassesBunked[counter]
      //  cell.classesTaken.text = attendanceClassesTaken[counter]
       // counter += 1
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
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

