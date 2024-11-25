import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack(spacing: 20){
                Text("🎯🎯🎯🎯🎯")
                    .font(.largeTitle)
                Text("89")
                    .font(.largeTitle)
                    .tracking(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Slider(value: .constant(50), in: 1...100, step: 1){
                    Text("Value")
                } minimumValueLabel: {
                    Text("1")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                } maximumValueLabel: {
                    Text("100")
                        .font(.headline)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Button("TRY") {
                    print("try button tapped")
                }
                .padding(.all)
                .font(.title3)
                .foregroundColor(.white)
                .background(LinearGradient(
                    gradient: Gradient(colors: [Color.accent, Color.accent.opacity(0.5)]), startPoint: .leading,
                    endPoint: .trailing
                    ))
                .cornerRadius(21)
                
                
                
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
