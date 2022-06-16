//
//  BreakPreviewApp.swift
//  BreakPreview
//
//  Created by Terje Lønøy on 16/06/2022.
//

import SwiftUI

@main
struct BreakPreviewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
