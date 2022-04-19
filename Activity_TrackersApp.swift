//
//  Activity_TrackersApp.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 3/31/22.
//

import SwiftUI
import Firebase
import UIKit
import CalendarKit

@main

struct SwiftUIFirebaseAuthApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene{
        WindowGroup {
            let viewModel = AppViewModel()
            ContentView()
                .environmentObject(viewModel)
        }
    }
    
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }
}
 
