import SwiftUI

struct MainView: View {

    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Main", systemImage: "house.circle.fill")
                }
            RankView()
                .tabItem {
                    Label("Ranking", systemImage: "crown.fill")
                }
            CustomSettings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
