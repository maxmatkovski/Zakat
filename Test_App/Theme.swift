import SwiftUI

extension Color {
    static let tzPrimary    = Color(red: 0.094, green: 0.369, blue: 0.216)  // Deep Islamic green
    static let tzGold       = Color(red: 0.796, green: 0.647, blue: 0.169)  // Gold
    static let tzBackground = Color(red: 0.945, green: 0.957, blue: 0.945)  // Soft green-white
    static let tzCard       = Color.white
    static let tzSecondary  = Color(red: 0.557, green: 0.557, blue: 0.576)
    static let tzSeparator  = Color(red: 0.878, green: 0.894, blue: 0.878)
    static let tzSuccess    = Color(red: 0.180, green: 0.490, blue: 0.369)
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.tzCard)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .shadow(color: .black.opacity(0.06), radius: 12, x: 0, y: 2)
    }
}

extension View {
    func cardStyle() -> some View {
        modifier(CardModifier())
    }
}

let tzCategories = [
    "Zakat", "Sadaqah", "Waqf", "Orphan Support",
    "Education", "Food & Hunger", "Medical", "Disaster Relief", "Other"
]

func currencyString(_ value: Double) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencyCode = "USD"
    formatter.currencySymbol = "$"
    formatter.maximumFractionDigits = 0
    return formatter.string(from: NSNumber(value: value)) ?? "$0"
}
