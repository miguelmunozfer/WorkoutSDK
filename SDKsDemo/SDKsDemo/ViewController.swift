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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }

    @IBAction func showProfile(){
        WorkoutSDK.sharedInstance.showTrainingProfileViewController()
    }
    
    @IBAction func showWeeklyWorkout(){
        WorkoutSDK.sharedInstance.showWorkoutPlan()
    }

}

