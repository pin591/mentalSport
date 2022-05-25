import SwiftUI

struct RankView: View {
    var body: some View {
        VStack {
            Text("Ranking")
            Image("rankingBackground")
                .resizable()
                .frame(width: 400, height: 200)
            ScrollView {
                VStack {
                    HStack {
                        Text("1) Paco")
                            .background(.yellow)
                            .border(.black, width: 1)
                        Text("Nivel 4500")
                            .background(.yellow)
                            .border(.black, width: 1)
                    }
                    HStack {
                        Text("2) Sandra")
                            .background(.gray)
                            .border(.black, width: 1)
                        Text("Nivel 3500")
                            .background(.gray)
                            .border(.black, width: 1)
                    }
                    HStack {
                        Text("3) Andreu")
                            .background(.red)
                            .border(.black, width: 1)
                        Text("Nivel 3000")
                            .background(.red)
                            .border(.black, width: 1)
                    }
                    HStack {
                        Text("4) Elena")
                            .background(.blue)
                            .border(.black, width: 1)
                        Text("Nivel 2500")
                            .background(.blue)
                            .border(.black, width: 1)
                    }
                    HStack {
                        Text("5) Marc")
                            .background(.blue)
                            .border(.black, width: 1)
                        Text("Nivel 1500")
                            .background(.blue)
                            .border(.black, width: 1)
                    }
                    HStack {
                        Text("6) Lucia")
                            .background(.blue)
                            .border(.black, width: 1)
                        Text("Nivel 1200")
                            .background(.blue)
                            .border(.black, width: 1)
                    }
                }
            }
        }
    }
}

struct RankView_Previews: PreviewProvider {
    static var previews: some View {
        RankView()
    }
}
