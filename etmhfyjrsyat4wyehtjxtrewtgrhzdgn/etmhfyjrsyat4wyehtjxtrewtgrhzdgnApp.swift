//
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgnApp.swift
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgn
//
//  Created by Scholar on 6/14/23.
//

import SwiftUI

@main
struct etmhfyjrsyat4wyehtjxtrewtgrhzdgnApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)

        }
    }
}
