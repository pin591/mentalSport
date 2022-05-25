import SwiftUI

struct HomeView: View {

    @State private var APIresults: Activities?
    @State private var activityReserved: Bool = false
    @State var buttonText : String = "Reserva"

    var body: some View {
            List(APIresults?.activities ?? []) { item in
                VStack() {
                    VStack(alignment: .leading) {
                        Text("\(item.id) ) \(item.name)")
                        Image("zumba")
                                   .resizable()
                                   .frame(width: 250, height: 150, alignment: .center)
                        Text(item.description)
                        }
                    VStack(alignment: .center) {
                        Button(buttonText) {
                            if activityReserved == false{
                                activityReserved = true
                                print(activityReserved)
                                buttonText = "Cancel·lar reserva"
                            }else{
                                activityReserved = false
                                print(activityReserved)
                                buttonText = "Reserva"
                            }
                        }
                        .background(activityReserved ? Color.red : Color.orange)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(alignment: .center)
                    }
                        Text("\(item.hours):\(item.minutes)")
                }
            }.onAppear(perform: loadData)
    }

    func loadData() {
        guard let url = URL(string: "http://projectefinalmarclamolla.alumnes.inspedralbes.cat/dades.json") else {
            print("Your API end point is invalid")
            return
        }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                let response = try? JSONDecoder().decode(Activities.self, from: data)
                    DispatchQueue.main.async {
                         self.APIresults = response
                     }
            }
        }.resume()
    }
}

