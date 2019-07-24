//
//  AddAssingmentViewController.swift
//  PlanX CoursesTab
//
//  Created by admin on 7/14/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class AddAssingmentViewController: UIViewController {

    @IBOutlet weak var assignmentName: UITextField!
    
    @IBOutlet weak var assignmentType: UITextField!
    @IBOutlet weak var dueDate: UITextField!
    @IBOutlet weak var percentage: UITextField!
    @IBOutlet weak var details: UITextView!
    
    
    @IBAction func addAssignmentButton(_ sender: AnyObject) {
        if (assignmentName.text != ""){
            
            let ref = Database.database().reference()
            let userID = ref.child(Auth.auth().currentUser!.uid) //Get user
            
            // Add a child to the parent:Course with the name of the course
            userID.child("Courses").child(courseList[myCourseIndex]).child(assignmentName.text!)
            
            // Add course specific items if they exist
            if(assignmentType.text != ""){
                userID.child("Courses").child(courseList[myCourseIndex]).child(assignmentType.text!)
            }
            if(dueDate.text != ""){
                userID.child("Courses").child(courseList[myCourseIndex]).child(dueDate.text!)
            }
            if(percentage.text != ""){
                userID.child("Courses").child(courseList[myCourseIndex]).child(percentage.text!)
            }
            if(details.text != ""){
                userID.child("Courses").child(courseList[myCourseIndex]).child(details.text!)
            }
            
            
            
            //items.append(assignmentName.text!)
            assignmentName.text = "";
            
            performSegue(withIdentifier: "assignmentAdded", sender: self)
        }
    }
    
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
