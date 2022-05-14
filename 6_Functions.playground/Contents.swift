//
// svo 08.05.2022
//
// Functions
//
// 6.1 Defining & Calling

func greeting() {
    print("Hello World!")
}
greeting()

// 6.2 Getting
func square(number: Int) {
    print(number*number)
}
square(number: 3)
// 6.3 Getting back
func square1(number: Int) -> Int {
    return number*number
    // code after return will be ignored
}
var result = square1(number: 7)
print(result)
// 6.4 2 or more function results
// by tuple
func getUser()->(name: String, age: Int) {
    return (name: "Ivan", age: 42)
}
print(getUser().name)
print(getUser().1)
//by array
func getUser2() -> [String] {
    return ["Petya", "31", "not married"]
}
let user = getUser2()
print("\(getUser2()[0]) is \(getUser2()[1]) years old and is \(getUser2()[2])")
// 6.5 parameters' names
// it's allowed to use two different parameter's names: for external and internal using:
func sayHello(to name: String) {
    print("Hello, \(name)")
}
sayHello(to: "bitch")
// 6.6 skipping parameters' names
func greet(_ person: String) {
    print("Hi, \(person)")
}
greet("bitch")
// 6.7 Default parameters
print("123")
print("456", terminator: " : ")
print("789")

func greet1(to person: String, nicely: Bool = true) {
    if nicely {
        print("Hello, \(person)")
    } else {
        print("Oh no, it's \(person) again")
    }
}
greet1(to: "Mery")
greet1(to: "Nikola", nicely: false)
// 6.8 Variadic functions & parameters
// Can get not only one value: Int...
func sqr(numbers: Int...) {
    for number in numbers {
        print("\(number) squared = \(number*number)")
    }
}
sqr(numbers: 4)
sqr(numbers: 2, 0, 78)
// 6.9 Through parameters
// parameters are constant,
// but it;s possible to make them IN/OUT
func doubleIt(number: inout Int) {
    number *= 2
}
var x: Int
x = 3
doubleIt(number: &x)
print(x)
