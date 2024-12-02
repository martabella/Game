import SwiftUI

struct BackgroundView: View{
    @EnvironmentObject var gameStore: GameStore
    
    @State var isMarksPresented = false
    var body: some View{
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {gameStore.game.restartGame()}){
                        RoundedImageView(name: "arrow.clockwise")
                    }
                    Spacer()
                    Button(action: {isMarksPresented=true}){
                        RoundedImageView(name: "list.dash")}
                    .sheet(isPresented: $isMarksPresented){
                        MarksView()
                    }
                }
                Spacer()
                HStack {
                    NumberView(text: "SCORE", value: gameStore.game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: gameStore.game.rounds)
                }
                
                
            }.padding()
        }
    }
    
    
}

struct RoundedImageView: View{
    let name: String
    var body: some View{
        Image(systemName: name)
            .font(.title)
            .frame(width: 56, height: 56)
            .overlay(Circle().stroke())
            .foregroundColor(.primary)
    }
}

struct NumberView : View {
    let text: String
    let value: Int
    var body : some View{
        VStack {
            Text(text)
            Text("\(value)")
                .frame(width: 68, height: 56)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke())
        }
    }
}



#Preview {
    BackgroundView().environmentObject(GameStore())
}
