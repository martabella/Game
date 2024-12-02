import SwiftUI

struct MarksView: View {
    
    @EnvironmentObject var gameStore: GameStore
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("MARKS").font(.largeTitle)
                List(gameStore.game.marks, id:\.date){mark in
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
    MarksView().environmentObject(GameStore())
}
