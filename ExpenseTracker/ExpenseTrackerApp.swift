//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Kavya Ch on 2024-05-26.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
     @StateObject var TransactionListVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TransactionListVM)
        }
    }
}
