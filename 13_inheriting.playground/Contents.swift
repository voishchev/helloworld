//
// svo: 19.05.22
//
// inheriting
// class can ihherit methods, props... from its parents

//Basic class
class Dog {
    var name: String
    var breed: String
    
    var info: String {
        return("The breed of \(name) is a\(breed)")
    }
    func makeNoise() -> String {
        return("Hello!")
    }
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
// subclass
class Corgi: Dog {
    //re-defining a property
    override var info: String {
        return("\(name) -- from \(breed)")
    }
    
    var isHappy: Bool
    //re-defining inherited method
    override func makeNoise() -> String {
        //super.<- touching the parent's result of this method
        // when we want to add something to parent's class method
        return(super.makeNoise()+"  "+"Get out of here!!")
    }
    init(isHappy: Bool) {
        self.isHappy = isHappy
        // be careful with initializing of parent's non-inited props
        super.init(name: "123", breed: "456")
    }
    
}
var myCorgi = Corgi(isHappy: true)
myCorgi.name = "Alice"
myCorgi.breed = "Corgi"
myCorgi.makeNoise()
myCorgi.info
