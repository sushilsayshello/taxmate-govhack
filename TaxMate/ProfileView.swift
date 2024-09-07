import SwiftUI

struct ProfileView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var selectedCategory = "Individual"
    
    let categories = ["Individual", "Business", "Self-Employed"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Set up your Profile")
                .font(.title)
                .padding()
            
            TextField("Enter your name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter your age", text: $age)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Picker("Tax Category", selection: $selectedCategory) {
                ForEach(categories, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Button(action: {
                // Save profile action
                print("Profile saved: Name: \(name), Age: \(age), Category: \(selectedCategory)")
            }) {
                Text("Save Profile")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Profile Setup")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
