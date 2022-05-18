//
// svo: 18.05.2022
//
// Properties of types
// means props of classes and structures temselves
// independing on instances
// are denoted bu 'static' keyword

class Animal {
    
    var age: Int {
        didSet {
            if age > maxAge {
                age = oldValue
                print("Age is too high")
            }
        }
    }
    var kind: String
    var maxAge = 30
    static var howManyPets = 0
    // lazy props = 'nil' bydefault
    // ther have been initializing while the first touch
    lazy var firExample = "Can I ask a question?"
    
    init(age: Int, kind: String) {
        self.age = age
        self.kind = kind
        Animal.howManyPets += 1
    }
}

struct Laptop {
    var platform: String
    var ram: Int {
        didSet {
            if ram > maxRam {
                ram = oldValue
                print("Dreams don't come true. RAM is too high")
            }
            if ram < Laptop.minRam {
                ram = oldValue
                print("too law")
            }
        }
    }
    var maxRam = 32
    static var minRam = 2
}

var myBison = Animal(age: 27, kind: "buffalo")
myBison.age = 40
myBison.age
// testing a lazy property
myBison
myBison.firExample
myBison
var myLaptop = Laptop(platform: "Mac", ram: 8, maxRam: 16)
myLaptop.ram = 32
myLaptop.ram
myLaptop.ram = 1
myLaptop.ram

//
Animal.howManyPets
var myCat = Animal(age: 27, kind: "buffalo")
var myDog = Animal(age: 27, kind: "buffalo")
Animal.howManyPets


