import SwiftUI

struct MarksView: View {
    let game:Game
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("MARKS").font(.largeTitle)
                List(game.marks, id:\.date){mark in
                    HStack {
                        Text("\(mark.value)")
                        Text("\(mark.date)")
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    MarksView(game: Game())
}
