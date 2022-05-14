# helloworld
# helloworld
======================================
30.04.2022
  + var, let
  + set, array, tuple, dictionary
  + iCode School: Lesson 1
--------------------------------------
01.05.2022
  + root VS wheel VS staff
  + access rights
  + iTerm2 & zsh & .zshrc
--------------------------------------
02.05.2022
  + iCode School: Lesson 3
     LaunchScreen
     Icon (source: 1024x1024)
     makeappicon.com
     ASSETS
  + GIMP -?
  + Day 2: stopped at ENUMs
--------------------------------------
03.05.2022
  + iCode School: Lesson 4
     AutoLayout
     Layout constraints
  + DataTypes:
     Int, UInt, Int8, 64 equivalent Int, UInt8, 16, 32, 64, Double, Float, String, Bool
  + Concat: ""+""+""
     Interpolation: "" \(variable)
  + Basic operators:
     !a (not a), -b, c! (optional: forced unwrapping)
     % - reminder of dev
     += -=
     a ? b : c <=> if a { b } else { c }
     == != && ||
-------------------------------------
05.05.2022
  + switch - case
  + for - in
  + while 
  + repeat - while
  + Tuples: definition & decomposition
  + Optional types: var a: Int? = nil
     Forced unwrapping by '!': Int(a)!
     Optional binding: 'if var'
     coalescing operator: OptVar ?? DefValue
+ implicitly unwrap optionals: '!'
     when nil might be only at the beginning
--------------------------------------
07.05.2022
  + Arrays:
     var x = [1, 2, 3]
     var x = Array<String>()
     .isEmpty, .counts, .append, .insert, ...    
  + Sets: 
     var x: Set = [1, 2, 3]
     var x = Set<String>()
     no order, only unique elements, faster, than arrays,
     ..., .insert,  .union, .intersection, .subtracting, .symmetricDifference 
  + Dictionaries:
     var x = [Key: value]
     .updateValue adds new or changes existing pair Key: value
--------------------------------------
08.05.2022
  + Functions:
     func fn(name: Int) -> (Key: valueType)
     params with def values: (paramName: Bool = true)
     Variadic: (numbers: Int...)
     inout: (number: inout Int) and (number: &a)
--------------------------------------
10.05.2022
  + Closures
     () - Void
     calling
     as a parameter of func
     trailing closure syntax
     capturing values
---------------------------------------
11.05.2022
  + enums
     for cases
     .rawValue
--------------------------------------
14.05.2022
  + OOP
     Classes
     init() & func()
     Stored and Computed properties
     Observers for Stored properties = callbacks (willSet(newVal) & didSet(oldVal)) 
     Getters & Setters for Computed properties
--------------------------------------
