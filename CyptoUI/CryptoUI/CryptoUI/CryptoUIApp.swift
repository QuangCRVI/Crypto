//
//  CryptoUIApp.swift
//  CryptoUI
//
//  Created by Quang Nguyen on 26/02/2024.
//

import SwiftUI

@main
struct CryptoUIApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView() {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
