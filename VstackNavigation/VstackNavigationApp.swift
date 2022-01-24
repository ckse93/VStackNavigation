//
//  VstackNavigationApp.swift
//  VstackNavigation
//
//  Created by Zack Jung on 1/24/22.
//

import SwiftUI

@main
struct VstackNavigationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Router.shared)
        }
    }
}
