# helloworld
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
     willSet & didSet
--------------------------------------
18.05.2022
                + Main Types:
               /                     \
      Value Type               Reference Type
             |                        ( enums, classes)
       structures       
     (structs itself,
  Int.. String, Bool...)
  + Structures VS Classes:
     1) struct has auto Init (requires all the non-static properties
        for instantiation)
     2) properties of class's inst  can be changed, even if the inst is const
         properties of struct's inst CANNOT be changed if the inst is const
     3) Value Type VS Reference Type ~> what changes & what doesn't
     4) mutating func: for chaging the froperty of class or struct itself (not of inst)
     5) static var : props which are not required to be inited during instantiation
     + Lazy props:  'lazy var x = "I'm not a vampire" '
        = 'nil by default'
        are being ititialized in the first touch
