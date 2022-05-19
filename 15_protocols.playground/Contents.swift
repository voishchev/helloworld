//
// svo: 19.05.2022
//
// Protocols

struct Milk: ICanBuyIt {
    var label: String
    var price: Int
}
struct Bread: ICanBuyIt {
    var label: String
    var color: [String]
    var price: Int
}

class Book: ICanBuyIt {
    var label: String
    var amount: Int
    var price: Int

    init(label: String, amount: Int, price: Int) {
        self.label = label
        self.amount = amount
        self.price = price
    }
}

func buy(item: ICanBuyIt) {
    print("I bought a \(item.label) , and it sosts \(item.price)")
}

// array of boughts might be too huge and unconvinient

// Protocol - is a list of nesessary properties and methods, that obligatory must be
// for not creating separate func buy for each product
// it's better to create a protocol
protocol ICanBuyIt {
    // minimum list of props for every product
    var label: String { get set }
    var price: Int { get set }
}
//each product must be signed to protocol:
//Milk: ICanByIt <- instead of just Milk
