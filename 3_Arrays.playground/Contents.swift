//
// svo: 07.05.2022
//
// Collections: Array
// consists on only one dataType
// each element has explicit index
//

// full form:
var array1 = Array<String>()

// shortened (preferred!) form:
var array2 = [String]()

// let's add elements:
let apple = "Apple"
let orange = "Orange"
let lemon = "Lemon"
let strawberry = "Strawberry"

var fruts = [apple, orange, lemon, strawberry]
var shoppingList = ["eggs", "milk", "bread", "sweets"]
// imoprtant methods
shoppingList.count
shoppingList.isEmpty
shoppingList.append("butter")
shoppingList[0]
shoppingList[1]="sault"
shoppingList
shoppingList.insert("Insertion", at: 3)

for instance in shoppingList {
    print("    %    \(instance)")
}

// enumerated Array!
for (index, value) in shoppingList.enumerated() {
    print("    % \(index) %    \(value)")
}

// add arrays  btw each other
shoppingList+=["pepper"]

var nums1 = [1, 2, 3, 4]
var nums2 = [5, 6, 7, 8]
var sum = nums1+nums2

