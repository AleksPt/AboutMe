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
                firstName: "Алексей",
                lastName: "Петренко",
                photo: "myAvatar",
                studyPeriod: 6,
                cityOfResidence: "Санкт-Петербург",
                bio: "Я родился в провинции Лангедок в 1668-м году. Мой род, хотя ныне и обедневший, принадлежит к одним из самых славных и древних семейств королевства. Мой отец граф де Бриссак сражался в Голландии в полку г-на Лаваля и был ранен копьем при осаде Монферрата, на стенах которого он первым водрузил королевское знамя. До 17 лет я жил в родовом замке, где, благодаря заботам моей матушки баронессы де Монжу, был прилично воспитан и получил изрядное образование. Ныне, расставшись со своими дорогими родителями, дабы послужить отечеству на поле брани, прошу зачислить меня в роту черных гвардейцев его величества.",
                telegram: "@alexpetrenko"
            )
        )
    }
}

struct Person {
    var firstName: String
    var lastName: String
    var photo: String
    var studyPeriod: Int
    var cityOfResidence: String
    var bio: String
    var telegram: String
}

