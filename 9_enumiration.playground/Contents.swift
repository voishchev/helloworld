//
// svo 11.05.2022
//
// Enumirations
// defines common type for group of relateed values
// I class types

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    // it's also possible: case success, failure
    case failure
}
var  result4 = Result.failure
// we are protected from accident using of different values
result4 = .success
let result5: Result
result5 = .success
// -------------------------
enum languages {
    case English, French, German, Russian
}
let nativeLanguage = languages.Russian
switch nativeLanguage {
case .English :
    print("ENG")
case .French :
    print("FRA")
case .German :
    print("DEU")
case .Russian :
    print("RUS")
}

// associated values
enum languages2 {
    case English(level: String), French(level: String), German(level: String), Russian(level: String)
}
let knowledge = languages2.English(level: "C1")

// RAW value
enum languages3: Int {
    case English, French, German, Russian
}
var myLang = languages3(rawValue: 2)
// our own definitions
enum languages4: String {
    case English = "favorite"
    case French = "unknown"
    case German = "desired"
    case Russian = "native"
}
 var yourLang = languages4(rawValue: "desired")
// if Int, then rawValue - indeces,
// if String, then rawValue - names
