struct Dog {
    var name: String {
        willSet {
            print("willSet: I'm called \(self.name)!")
        }
        didSet {
            print("didSet: I'm called \(self.name)!")
        }
    }
    var age: Int {
        willSet {
            print("willSet: I'm \(age) years")
        }
        didSet {
            print("didSet: I'm \(age) years")
        }
    }
}

var someDog = Dog (name: "A", age: 3)

someDog.name = "B"
someDog.age = 4

/*
 OUTPUT:
 willSet: I'm called A!
 didSet: I'm called B!
 willSet: I'm 3 years
 didSet: I'm 4 years
 */
