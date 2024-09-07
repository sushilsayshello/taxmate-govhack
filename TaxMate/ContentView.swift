import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to TaxMate")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: ProfileView()) {
                    Text("Set Up Your Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: FinancialHealthView()) {
                    Text("Financial Health Checker")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: ProgressTrackerView()) {
                    Text("Track Your Progress")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: FeaturesView()) {
                    Text("Explore Features")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: FAQView()) {
                    Text("Frequently Asked Questions")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(8)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
