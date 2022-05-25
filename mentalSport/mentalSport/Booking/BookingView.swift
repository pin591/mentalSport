import SwiftUI

struct BookingView: View {
    var name: String
    var description: String
    var hours: Int
    var minutes: Int
    var activityRoom: String
    var duration: Int
    var requieredLevel: Int
    @State var disabled: Bool = false
    @State var hidden: Bool = true

    var body: some View {
        NavigationView {
            VStack {
                Text(name)
                Text(description)
                Text("\(hours)")
                Text("\(minutes)")
                Text(activityRoom)
                Text("\(duration)")
                Text("\(requieredLevel)")
                Button("Reservar") {
                    disabled = true
                    hidden = false
                }.disabled(self.disabled)
                Button("Cancel·lar reserva") {
                    disabled = false
                    hidden = true
                }
            }
            .background(.red)
        }

    }

    init(activity: Activity) {
        self.name = activity.name
        self.description = activity.description
        self.hours = activity.hours
        self.minutes = activity.minutes
        self.activityRoom = activity.activityRoom
        self.duration = activity.duration
        self.requieredLevel = activity.requieredLevel
    }
}

//struct Book_Previews: PreviewProvider {
//    static var previews: some View {
//        BookingView(activity: activities)
//    }
//}
