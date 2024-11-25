import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯🎯🎯")
            Text("89")
            Slider(value: .constant(50), in: 1...100, step: 1){
                Text("Value")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("100")
            }
            Button("TRY") {
                print("try button tapped")
            }

        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
