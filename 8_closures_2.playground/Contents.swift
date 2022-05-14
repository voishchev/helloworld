//
// svo 10.05.2022
//
// CLOSURES: part 2

func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("VRN")
    print("I'm here")
}
travel { (place: String) in
    print("... \(place) ... \(place) ...")
}

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed) km/h")
}
func buildCar(name: String, engine: (Int)-> Void) {
    //building a car
}

func travel2(action: (String)->String) {
    print("I am getting ready to go")
    let description = action("SPB")
    print(description)
    print("I'm arrived")
}
let myClosureInAdvance = {(city: String) -> String in
    return("Choo Choo, mothefucker!! \(city) is waiting me")
}

travel2(action: myClosureInAdvance)
travel2 { (city: String) -> String in
    return("go go go to \(city)")
}
travel2 { city in
    return("go go go to \(city)")
}
travel2 {
    return("go go go to \($0)")
}

func travel3(action: (String, Int) -> String) {
    print("    I am getting ready to go")
    let description = action("KCH", 32)
    print("    \(description)")
    print("    I'm arrived")
}
travel3 {(city: String, distance: Int) -> String in
    return("Remains \(distance)km to \(city)")
}
// OR
travel3 {
    return("Remains \($1)km to \($0)")
}

// func, that returns closure
func travel4() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel4()
// result is a closure now. Let's call it
result("Fort Lauderdale")

// Capturing values
func travel5() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter).  I'm going to \($0)")
        counter += 1
    }
}
let result_ = travel5()
result_("Fort Lauderdale")
result_("Fort Lauderdale")
result_("Fort Lauderdale")
result_("Fort Lauderdale")
