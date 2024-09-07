import SwiftUI

struct FAQView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                FAQItem(question: "What is TaxMate?", answer: "TaxMate is a platform that helps Australians with tax compliance.")
                FAQItem(question: "Who is TaxMate for?", answer: "TaxMate is for individuals with tax compliance challenges.")
                FAQItem(question: "How does the AI Chatbot work?", answer: "The AI Chatbot provides real-time tax support.")
            }
            .padding()
        }
        .navigationTitle("FAQ")
    }
}

struct FAQItem: View {
    var question: String
    var answer: String
    @State private var isExpanded = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                isExpanded.toggle()
            }) {
                HStack {
                    Text(question)
                        .font(.headline)
                    Spacer()
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
            }
            if isExpanded {
                Text(answer)
                    .font(.subheadline)
                    .padding(.top, 5)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .shadow(radius: 1)
    }
}

struct FAQView_Previews: PreviewProvider {
    static var previews: some View {
        FAQView()
    }
}
