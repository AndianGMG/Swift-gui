import UIKit

enum brand {
    case Tesla, Volvo
}

protocol  Car {
    var isEngineOn: Bool {get set}
    var windowOpen: Bool {get set}
    
    func toDrive () -> Bool
}

extension Car {
    mutating func handleEngine() {
        isEngineOn = (isEngineOn ? false : true)
    }
    mutating func handleWindow() {
        windowOpen = (windowOpen ? false : true)
    }
    func toDrive() -> Bool {
        return true
    }
}


class SportCar: Car {
    var hp: Int
    var brand: brand
    var isEngineOn: Bool
    var windowOpen: Bool
    
    init(hp: Int, isEngineOn: Bool, windowOpen: Bool, brand: brand) {
        self.hp = hp
        self.isEngineOn = isEngineOn
        self.windowOpen = windowOpen
        self.brand = brand
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return String(describing: brand)
    }
}


class TrunkCar: Car {
 
    var load: Int
    var brand: brand
    var isEngineOn: Bool
    var windowOpen: Bool
    
    init(load: Int, isEngineOn: Bool, windowOpen: Bool, brand: brand) {
        self.load = load
        self.isEngineOn = isEngineOn
        self.windowOpen = windowOpen
        self.brand = brand
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return String(describing: brand)
    }
}

let car1 = SportCar(hp: 350, isEngineOn: true, windowOpen: false, brand: .Tesla)
let car2 = TrunkCar(load: 150, isEngineOn: true, windowOpen: true, brand: .Volvo)

