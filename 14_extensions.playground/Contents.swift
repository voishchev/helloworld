//
// svo: 19.05.22
//
// extensions: for classes, structs and enum
// it's possible to add new property, initializer, method by extensions

// Int - is a struct
//let's extend its functionality

extension Int {
    var isEven: Bool {
        return(self%2 == 0)
    }
    func squared() -> Int {
        return(self * self)
    }
    func repetition(task: () -> Void){
        for _ in 0..<self {
            task()
        }
    }
}
var x: Int = 10
// using uor new method:
x.squared()
x.isEven
x = 3
x.isEven
x.repetition {
    print("hello \(x)")
}
