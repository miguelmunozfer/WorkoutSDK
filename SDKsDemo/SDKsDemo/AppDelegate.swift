//
//  AppDelegate.swift
//  SDKsDemo
//
//  Created by Miguel Muñoz on 24/11/22.
//

import UIKit
import TrainingSDK

@main

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        WorkoutSDK.sharedInstance.startSession(appID: "APP_ID", password: "PASSWORD")
        WorkoutSDK.sharedInstance.setMainColor(color: "32a852")
        
        // H -> Male, M -> Female
        WorkoutSDK.sharedInstance.updateProfile(user: "mmunoz", sex: "H", height: 180, weigth: 80, birthDate: Date("1983-06-18"), level: 1)

        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

