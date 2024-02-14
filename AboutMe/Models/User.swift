import Foundation

struct User {
    var userName: String
    var password: String
    var person: Person
    
    static func getUser() -> User {
        User(
            userName: "Alex",
            password: "404",
            person: Person(
                firstName: "Aleksey",
                lastName: "Petrenko",
                photo: "myAvatar",
                age: 30,
                city: "St.Petersburg"
            )
        )
    }
}

struct Person {
    var firstName: String
    var lastName: String
    var photo: String
    var age: Int
    var city: String
}
