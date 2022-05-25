//import SwiftUI
//
//struct ApiGymDataSource: View {
//
//    @State var activities = [Activity]()
//
//    //@State var dataTask: URLSessionDataTask = URLSessionConfiguration.default
//    @State var configuration: URLSessionConfiguration!
//    @State var session: URLSession!
//
//    init() {
//        session = URLSession(configuration: configuration)
//    }
//
//    var body: some View {
//        NavigationView {
//            List(activities) { activity in
//                VStack(alignment: .center) {
//                    NavigationLink(destination: BookingView()) {
//                        Image("userPicture")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 200, height: 200)
//                    }
//                    .navigationBarTitle("")
//                    .navigationBarHidden(true)
//                    Text(activity.name)
//                }.font(.title)
//            }
//        }
//        .navigationBarTitle("")
//        .navigationBarBackButtonHidden(true)
//        .navigationBarItems(leading: EmptyView())
//        .navigationBarHidden(true)
//    }
//
//
////    func loadData() {
////        let activitiesURL = "http://projectefinalmarclamolla.alumnes.inspedralbes.cat/datos.json"
////        if let url = URL(string: activitiesURL) {
////            let request = URLRequest(url: url)
////            dataTask = session.dataTask(with: request) {(data, response,error) in
////                if error == nil {
////                    if let httpResponse = response as? HTTPURLResponse {
////                        switch httpResponse.statusCode {
////                        case 200:
////                            if let activitiesData = data {
////                                do {
////                                    let callResult = try JSONDecoder().decode(Activities.self, from: activitiesData)
////                                    for activity in callResult.activities {
////                                        self.mapDTOInModel(activity: activity)
////                                    }
////                                } catch let error as NSError {
////                                    print ("Error processing json data: \(error.description)")
////                                }
////                            }
////                        default:
////                            print("HTTP Responde code: \(httpResponse.statusCode)")
////                        }
////                    }
////                } else {
////                    print("Error: \(String(describing: error?.localizedDescription))")
////                }
////            }
////
////            dataTask?.resume()
////        }
////    }
//
//    func mapDTOInModel(activity: Activity) {
//        let currentActivity = Activity(name: activity.name, description: activity.description, hours: activity.hours, minutes: activity.minutes, activityRoom: activity.activityRoom, duration: activity.duration, requieredLevel: activity.requieredLevel)
//
//        self.activities.append(currentActivity)
//    }
//}
//
//
////struct HomeView_Previews: PreviewProvider {
////    static var previews: some View {
////        HomeView()
////    }
////}
