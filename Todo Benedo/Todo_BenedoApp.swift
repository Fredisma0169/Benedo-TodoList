//
//  Todo_BenedoApp.swift
//  Todo_Benedo
//
//  Created by Fredisma OUEDRAOGO on 25/02/2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for view
 */

@main
struct Todo_BenedoApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
