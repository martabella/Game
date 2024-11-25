import SwiftUI

struct BackgroundView: View{
    var body: some View{
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                HStack {
                    RoundedImageView(name: "arrow.clockwise")
                    Spacer()
                    RoundedImageView(name: "list.dash")
                }
                Spacer()
                HStack {
                    NumberView(text: "SCORE", value: 0)
                    Spacer()
                    NumberView(text: "ROUND", value: 10)
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
    BackgroundView()
}
