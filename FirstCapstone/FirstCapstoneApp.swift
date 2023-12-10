//
//  FirstCapstoneApp.swift
//  FirstCapstone
//
//  Created by Fahad Matlagitu on 23/11/2023.
//

import SwiftUI

@main
struct FirstCapstoneApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            WelcomeView()
                
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
