//
// svo 05.05.2022
//

// Tuples: defined by ()
var exam = (name: "Solid State Physics", grade: 5, isUseful: true)
let a = "SSP"
let b = true
// without defined filedNames:
var tuple1 = (a, b)
// by defined types in advance:
var tuple2: (Int, String)
tuple2 = (45, "Phys")
//by defining composedName
var (weight, height) = (60, 175)

//----------------------------------------
//Tuples' decomposition
print(exam.name)
print(exam.self)
print(exam.2)
print(tuple2.1)
// if we are not interested in grade and isUseful:
var (name, _, _) = exam
print("I've passed \(name)")
var exam2 = ("Chem", 4, true)
exam2.2 = false
print(exam2.self)
exam = exam2
print(exam.isUseful)
