//
// svo 10.05.2022
//
// Clouseres: anonimous functions

/*
{ (parameters) -> Result type in
    clouser body
}
*/
// Empty:
let driving = {
    print("I'm driving")
}
driving()
let driving_ = { () -> Void in
    print("I'm driving _")
}

// Input parameters:
let driving2 = { (place: String) in
    print("I'm going to \(place) by car")
}
driving2("London")
// Output parameters
let driving3 = { (place: String) -> String in
    return("    I am going to \(place) by my car")
}
let toPrint = driving3("Erfurt")
print(toPrint)

let payment2 = {(user: String) in
    print("\(user) , pay")
}
let payment3 = {(user: String) -> Bool in
    print("Pay!")
    return true
}
let payment4 = {()->Bool in
    return true
}
payment4()

func travel(action: ()->Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived")
}
travel(action: driving_)

//trailing closure syntax
// only when last parameter is closure
travel() {
    print("HEY")
}

func animate(duration: Double, animations: ()->Void) {
    print("Starting a \(duration) second animation")
    animations()
}
// without trailing closure synrax:
animate(duration: 3, animations: {
    print("Image")
    
})
// with trailing closure syntax:
animate(duration: 3) {
    print("IMAGE")
}
