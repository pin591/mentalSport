import Foundation

struct Users: Decodable {

    let id = UUID()
    let users: [User]

    private enum CodingKeys: String, CodingKey {
        case users = "users"
    }
}

struct User : Hashable, Decodable, Identifiable {
    var id: String
    let name: String
    let surname: String
    let email: String
    let username: String
    let password: String
    let phone: String
    let country: String

    init(name: String, surname: String, email: String, userame: String, password: String, phone: String, country: String) {
        self.id =  UUID().uuidString
        self.name = name
        self.surname = surname
        self.email = email
        self.username = userame
        self.password = password
        self.phone = phone
        self.country = country
    }
}
