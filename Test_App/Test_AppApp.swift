import SwiftUI
import SwiftData

@main
struct Test_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Donation.self, Charity.self])
    }
}
