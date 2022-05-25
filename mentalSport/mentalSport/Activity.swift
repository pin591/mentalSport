import Foundation

struct Activities: Decodable {

    let id = UUID()
    let activities: [Activity]

    private enum CodingKeys: String, CodingKey {
        case activities = "activities"
    }
}

struct Activity : Hashable, Decodable, Identifiable {
    var id: String
    let name: String
    let description: String
    let hours: Int
    let minutes: Int
    let activityRoom: String
    let duration: Int
    let requieredLevel: Int

    init(name: String, description: String, hours: Int, minutes: Int, activityRoom: String, duration: Int, requieredLevel: Int) {
        self.id =  UUID().uuidString
        self.name = name
        self.description = description
        self.hours = hours
        self.minutes = minutes
        self.activityRoom = activityRoom
        self.duration = duration
        self.requieredLevel = requieredLevel
    }
}
