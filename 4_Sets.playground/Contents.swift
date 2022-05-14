//
// svo: 07.05.2022
//
// Collections: Set
//

var mySet = Set<String>()
var sprtsList: Set = ["swim", "bowling", "hockey", "running"]
// similar to array: .count, .isEmpty
sprtsList.insert("fishing")
sprtsList
sprtsList.remove("bowling")
sprtsList
sprtsList.contains("hockey")

// .enumirated does not exist
// but there is .sorted: by defaiult sorts by increasing or alphabetically

for sport in sprtsList.sorted() {
    print("\(sport)")
}

var numbers: Set<Float> = [0, -2, 156, 4.4, 2]
for aNumber in numbers.sorted() {
    print("  %  \(aNumber)")
}

// Array ~> Set
var array1 = ["red", "green", "blue", "white"]
var set1 = Set<String>(array1)
set1 = Set(array1)
for aColor in array1.sorted() {
    print("  !  \(aColor)")
}

var array2 = Array<String>(set1)
// Basic methods
let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 6, 8]
let PrimeNumbers: Set = [2, 3, 5, 7]
// OR
oddNumbers.union(evenNumbers).sorted()
// AND
oddNumbers.intersection(PrimeNumbers).sorted()
// A NOT B
oddNumbers.subtracting(PrimeNumbers).sorted()
// (A NOT B) OR (B NOT A)
oddNumbers.symmetricDifference(PrimeNumbers).sorted()


