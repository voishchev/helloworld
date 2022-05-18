//
// svo: 18.05.2022
//
// Structures: similar to classes

class Human {
    var age: Int
    var name: String
    // nesessary for classes
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}
let humanBeing1 = Human(age: 20, name: "Ivan")
// In case of classes, we can change a property of instance even if an instance is constant:
humanBeing1.age = 25
humanBeing1.age

// but look at the structure:
struct Animals {
    var age: Int
    var kind: String
    // 1st DIFFERENCE: init is not required
}
var animal1 = Animals(age: 5, kind: "Dog")
// In case of struct, we CANNOT change a property of an instance even if an instance is constant:
//animal1.kind = "Cat"
animal1.kind


// class & enum: Reference Type
// struct: Value Type
// What is the difference? Let's see:
var humanBeing2 = Human(age: 45, name: "Zhanna")
humanBeing2.age
humanBeing2.name
// REFERENCING
humanBeing2 = humanBeing1
humanBeing2.age
humanBeing2.name
humanBeing2.age = 15
humanBeing2.name = "Kate"
humanBeing2.age
humanBeing2.name
humanBeing1.age
humanBeing1.name
// humanBeing1 has also been changed, because humanBeing2 is just a reference to humanBeing1

var animal2 = Animals(age: 19, kind: "Cat")
animal1.age
animal1.kind
// COPYING
animal1 = animal2
animal1.age
animal1.kind
animal1.age = 3
animal1.kind = "Humster"
animal2.age
animal2.kind
// animal2 has not been changed, because animal1 is a copy of animal2

struct Automobile {
    var vendor: String
    
    mutating func makeItMoskwich() {
        vendor = "Moskwich"
    }
}
