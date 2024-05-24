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
                login: "user",
                password: "1",
                person: Person(
                    name: "Lidiya",
                    surname: "Piataeva",
                    age: 35))
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
}
