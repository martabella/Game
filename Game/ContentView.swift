import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, swift!")
                .font(.largeTitle)
                .foregroundColor(Color.blue)


        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
