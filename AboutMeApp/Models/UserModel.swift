//
//  User.swift
//  AboutMeApp
//
//  Created by Лидия Пятаева on 24.05.2024.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
                login: "",
                password: "",
                person: Person(
                    name: "Lidiya",
                    surname: "Piataeva",
                    age: 35,
                    company: "ARDU",
                    position: "Teacher",
                    bio: "Lidiia Piataeva was born in 1987 in Ufa. Grown up in Mongolia, Erdenet city. Graduated drom school in 2004. In that year started her education in Magnitogorsk State University, majoring in mathematics."))
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let company: String
    let position: String
    let bio: String
}
