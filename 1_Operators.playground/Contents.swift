//
// svo 03.05.2022
//
// Basic operators
// --------------------------------------------------------------

// Un prefix: -a !b
// Un postfix: c!
// Bi: 1+2
//Tern: a ? b : c <=> if a then b

// =
var a = 0
var b = -5
a = 13
// Math: + - * /
// print(-a-b)
// reminder of the devision: %
// x % y = x % (-y)
a = a % b
// += -= eq c +=2 == c=c+2
a -= 2
// comparison: ==, !=, <, >, <=, >=
// Logics: !a , a&&b, a||b
a <= b
var isNight = true
isNight ? print("Guten Aben") : print("Guten tag!")

// if-else
if a+b==10 {
    //print("YES")
} else if a+b>10 {
    //print(">10")
} else {
    //print("<10")
}
// ------------------
// Closed range operator: (a...b) : from a to b including a & b
// Half-closed range operator: (a..<b) : from a to b including a & excluding b

// 05.05.22
//switch-case
a = 1
// { } are not required in cases
switch a {
case 1:
        print("first")
        //print("first")
        // let's fall to the next case's body directly
        // without checking
        fallthrough
case 5:
        print("second")
        //print("second")
        //print("second")
default: print("DEF")
}

// loops
// 1: for - in
// analogue for foreachL=: for collections, such as, numbers range, symbols in a string, elements in array
let top = 3
let range = 1..<top
// instance is not needed to be explicitly declared
for instance in range {
    print("Number is \(instance)")
}
let myDictionary = ["1st":"first"]
// if shortOrder is not needed: exchange to _
for (shortOrder, longOrder) in myDictionary {
    print("\(shortOrder) things \(longOrder)")
}

// while (while true): pre
var x = 0
while x<15 {
    print(x)
    x += 1
    if x==8 {
        break
    }
}

// repeat - while
x = 5
repeat {
    print(x)
    x += 1
} while x<5


