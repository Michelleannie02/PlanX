//
//  DataStorageViewController.swift
//  PlanX
//
//  Created by Diana Sok on 7/29/19.
//  Copyright © 2019 H2OT. All rights reserved.
//

import UIKit

class DataStorageViewController: UIViewController {

    @IBOutlet weak var CalDataStorageLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CalDataStorageLbl.text = dateString
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}