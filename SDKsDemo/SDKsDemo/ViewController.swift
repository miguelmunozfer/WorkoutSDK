//
//  ViewController.swift
//  SDKsDemo
//
//  Created by Miguel Muñoz on 24/11/22.
//

import UIKit
import TrainingSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showProfile(){
        WorkoutSDK.sharedInstance.showTrainingProfileViewController()
    }
    
    @IBAction func showWeeklyWorkout(){
        WorkoutSDK.sharedInstance.showWorkoutPlan()
    }

}

