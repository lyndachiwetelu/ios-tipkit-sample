//

import SwiftUI
import TipKit

@main
struct MyTravelApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().task {
                try? Tips.configure([
                    .displayFrequency(.immediate),
                    .datastoreLocation(.applicationDefault)
                ])
            }
        }
    }
}
