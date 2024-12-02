import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var gameStore: GameStore
    
    @State var alerIsVisible = false
    @State var sliderValue:Double = 53
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 20){
                Text("🎯🎯🎯🎯🎯")
                    .font(.largeTitle)
                Text("\(gameStore.game.target)")
                    .font(.largeTitle)
                    .tracking(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                SliderView(value: $sliderValue)
                Button("TRY") {
                    gameStore.game.points(sliderValue: Int(sliderValue))
                    self.alerIsVisible=true
                }
                .padding(.all)
                .font(.title3)
                .foregroundColor(.white)
                .background(LinearGradient(
                    gradient: Gradient(colors: [Color.accent, Color.accent.opacity(0.5)]), startPoint: .leading,
                    endPoint: .trailing
                    ))
                .cornerRadius(21)
                .alert(isPresented: $alerIsVisible){
                    Alert(title: Text("Congratulations"),
                          message: Text("🎉🎉🎉🎉 \n Your points are \(gameStore.game.points) \n The slider value is \(Int(sliderValue))"),
                          dismissButton: .default(Text("Got it")){
                        gameStore.game.restart()
                        self.sliderValue = 53
                    })
                }
                
                
                
                
            }
            .padding()
        }
    }
    
}

#Preview {
    ContentView().environmentObject(GameStore())
}

struct SliderView: View {
    
    @Binding var value:Double
    
    var body: some View {
        Slider(value: $value, in: 1...100, step: 1){
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
    }
}
