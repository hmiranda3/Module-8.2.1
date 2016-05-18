//: Playground - noun: a place where people can play

import UIKit

class Person: Equatable {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName:String, lastName: String, age: Int){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }

}

// This code sets the equatable. We do this because a custom class doesn't come with the ability to equate.

func ==(lhs: Person, rhs: Person) -> Bool {
    return(lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName && lhs.age == rhs.age)
}

// Here we made several Person instances and set their names and ages.

let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let habib = Person(firstName: "Habib", lastName: "Miranda", age: 29)
let sam = Person(firstName: "Sam", lastName: "Smith", age: 33)

// Here we created a new variable that contains the names of persons in the club.

var clubMemebers: [Person] = [james, andrea, carol, habib]

// This function below is to check whether someone is in the club or not.

func areYouAMemeberOfTheClub(person: Person) -> Bool {
    return clubMemebers.contains(person)
}

areYouAMemeberOfTheClub(sam)


