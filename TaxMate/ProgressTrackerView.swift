import SwiftUI

struct ProgressTrackerView: View {
    @State private var progressValue: Float = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Your Tax Filing Progress")
                .font(.title)
                .padding()
            
            ProgressView(value: progressValue)
                .progressViewStyle(LinearProgressViewStyle())
                .padding()
            
            Button(action: {
                incrementProgress()
            }) {
                Text("Complete More Tasks")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Progress Tracker")
    }
    
    func incrementProgress() {
        if progressValue < 1.0 {
            progressValue += 0.1 // Increment progress
        }
    }
}

struct ProgressTrackerView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressTrackerView()
    }
}
