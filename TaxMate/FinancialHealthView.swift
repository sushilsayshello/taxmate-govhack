import SwiftUI

struct FinancialHealthView: View {
    @State private var income: String = ""
    @State private var expenses: String = ""
    @State private var financialHealthScore: String = "N/A"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Financial Health Checker")
                .font(.title)
                .padding()
            
            TextField("Enter your monthly income", text: $income)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            TextField("Enter your monthly expenses", text: $expenses)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: {
                calculateFinancialHealth()
            }) {
                Text("Calculate Health Score")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding()
            
            Text("Your Financial Health Score: \(financialHealthScore)")
                .font(.title)
                .padding()
            
            Spacer()
        }
        .navigationTitle("Financial Health")
    }
    
    func calculateFinancialHealth() {
        // Basic financial health calculation
        guard let incomeValue = Double(income), let expensesValue = Double(expenses) else {
            financialHealthScore = "Invalid input"
            return
        }
        
        let healthScore = ((incomeValue - expensesValue) / incomeValue) * 100
        financialHealthScore = String(format: "%.2f", healthScore)
    }
}

struct FinancialHealthView_Previews: PreviewProvider {
    static var previews: some View {
        FinancialHealthView()
    }
}
