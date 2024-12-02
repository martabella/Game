import SwiftUI

struct BackgroundView: View{
    @Binding var game:Game
    @State var isMarksPresented = false
    var body: some View{
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {game.restartGame()}){
                        RoundedImageView(name: "arrow.clockwise")
                    }
                    Spacer()
                    Button(action: {isMarksPresented=true}){
                        RoundedImageView(name: "list.dash")}
                    .sheet(isPresented: $isMarksPresented){
                        MarksView(game: game)
                    }
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
