import SwiftUI

struct BackgroundView: View{
    @Binding var game:Game
    var body: some View{
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {game.restartGame()}){
                        RoundedImageView(name: "arrow.clockwise")
                    }
                    Spacer()
                    RoundedImageView(name: "list.dash")
                }
                Spacer()
                HStack {
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: game.rounds)
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
    BackgroundView(game: .constant(Game()))
}
