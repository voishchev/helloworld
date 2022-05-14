//
// svo: 11.05.2022
//
// Classes

class Square {
    // vars and lets inside the class are called PROPERTIES
    var length: Int = 0
    var name: String = ""
    // Properties can be STORED and COMPUTED
    
    // Computed:
    var s: Int {
        // if there is no setter, 'get' can be skipped:
        return(25)
    }
/*  var propertyName: dataType {
        get {
            // calc the value
        }
        set {
            // set the value
        }
    }
 */
    // methods
    func move() {
        print("The square is moving")
    }
}
var sq1 = Square()
sq1.move()

class Rectangle {
    var name: String
    var width: Int
    // properties' observers work like callbacks,
    // but there are two events for calling them:
    // before and after changing
    var length: Int {
        willSet(newLength) {
            print("sum will be changed from \(self.length) to \(newLength)")
        }
        didSet(oldLength) {
            print("sum has changed from \(oldLength) to \(self.length)")
        }
    }
    
    init(width: Int, length: Int, name: String) {
        self.length = length
        self.width = width
        self.name = name
    }
    
    func getSq() -> Int {
        return(length*width)
    }
}
var rect1 = Rectangle(width: 3, length: 5, name: "qwerty")
print(rect1.getSq())
rect1.length = 6


// clalc the incom from bank account
class Account {
    // Hard initial definitions:
    var sum: Double = 0      // Sum of stored money
    var rate: Double = 0.01  // %
    
    // Computed property with both: getter & setter
    var profit: Double {
        get {
           return sum + sum*rate
        }
        set(newProfit) {
            self.sum = newProfit/(1+rate)
        }
        // newValue is used for short form
        //set {
        //    self.sum = newValue/(1+rate)
        //}
    }
    
    init(sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}
var myInvest = Account(sum: 1000, rate: 5)
// here getter works:
print(myInvest.profit)

//here setter works
// expecting profit=2000
myInvest.profit = 1000
print(myInvest.sum)
print(myInvest.rate)
