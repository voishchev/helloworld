//
// 07.05.2022
//
// Containers: Dictionary
//
// All the elements are of the same dataType
// unique keys for each element
var x: Dictionary<String, Int> = ["one": 1]
var y = [Int: String]()

var heights = ["Yan": 1.75, "Maria": 1.76, "Igor": 1.72, "Olga":1.68]
var names = [1.7: "Yan", 1.76: "Maria", 1.72: "Igor", 1.68: "Olga"]
names[1.76]
heights["Maria"]
heights["Ivan"]
heights.updateValue(1.66, forKey: "Ivan")
heights
heights.keys
var a = Array(heights.values)
var b = Set(heights.keys)
