import SwiftUI

struct FeaturesView: View {
    var body: some View {
        List {
            Section(header: Text("Key Features").font(.title2)) {
                FeatureRow(title: "AI Chatbot Assistance", description: "Get 24/7 help with tax submissions and superannuation queries.")
                FeatureRow(title: "Proactive Notifications", description: "Receive timely reminders for tax deadlines and available benefits.")
                FeatureRow(title: "Financial Health Tools", description: "Track your financial health with personalized tools.")
                FeatureRow(title: "Educational Hub", description: "Access resources to better understand your tax obligations.")
            }
        }
        .navigationTitle("Features")
    }
}

struct FeatureRow: View {
    var title: String
    var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            Text(description)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct FeaturesView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturesView()
    }
}
