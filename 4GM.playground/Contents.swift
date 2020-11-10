import UIKit

enum Brand {
    case MAN, BMW, Tesla, Volvo
}

enum WindowsState {
    case open, closed
}

enum EngineStarted {
    case on, off
}

enum GasolineTank {
    case full, empty
}

class Car {
   
    var yearOfManufacture: Int
    var windowsState: WindowsState
    var gasolineTank: GasolineTank
    var engineStarted: EngineStarted
    var brand: Brand
    var color: UIColor
    
    init(yearOfManufacture: Int, windowsState: WindowsState, gasolineTank: GasolineTank, engineStarted: EngineStarted, brand: Brand, color: UIColor) {
        self.yearOfManufacture = yearOfManufacture
        self.windowsState = windowsState
        self.gasolineTank = gasolineTank
        self.engineStarted = engineStarted
        self.brand = brand
        self.color = color
        }
    
    func handleAction () {
    }
    
     }

class SportCar: Car {
    var maxSpeed: Int
    
    init(speed: Int, yearOfManufacture: Int, windowState: WindowsState, gasolineTank: GasolineTank, engineStarted: EngineStarted, brand: Brand, color: UIColor) {
        self.maxSpeed = speed
        super.init(yearOfManufacture: yearOfManufacture, windowsState: windowState, gasolineTank: gasolineTank, engineStarted: engineStarted, brand: brand, color: color)
    }
    override func handleAction() {
        switch windowsState {
        case .open:
            print("Прокатимся с ветерком")
        default:
            print("Открой окна")
        }
    }
}

class SuperSportCar: SportCar {
    var forsage: Bool
    
    override init(speed: Int, yearOfManufacture: Int, windowState: WindowsState, gasolineTank: GasolineTank, engineStarted: EngineStarted, brand: Brand, color: UIColor) {
        self.forsage = true
        super.init(speed: 300, yearOfManufacture: yearOfManufacture, windowState: windowState, gasolineTank: gasolineTank, engineStarted: engineStarted, brand: brand, color: color)
    }
    
    override func handleAction() {
        switch forsage {
        case true:
            print("Дави до полика!")
        default:
            print("Надо сделать апгрейд")
        }
    }
}


class Truk: Car {
    var maxLoad: Int
    
    init(load: Int, yearOfManufacture: Int, windowState: WindowsState, gasolineTank: GasolineTank, engineStarted: EngineStarted, brand: Brand, color: UIColor) {
        self.maxLoad = load
        super.init(yearOfManufacture: yearOfManufacture, windowsState: windowState, gasolineTank: gasolineTank, engineStarted: engineStarted, brand: brand, color: color)
    }
    override func handleAction() {
        switch gasolineTank {
        case .full:
            print("Пора отвести груз")
        default:
            print("Где тут заправка?")
        }
    }
}

class SuperTruk: Truk {
    var additionalTrailer: Bool
    
    override init(load: Int, yearOfManufacture: Int, windowState: WindowsState, gasolineTank: GasolineTank, engineStarted: EngineStarted, brand: Brand, color: UIColor) {
        self.additionalTrailer = true
        super.init(load: 4000, yearOfManufacture: yearOfManufacture, windowState: windowState, gasolineTank: gasolineTank, engineStarted: engineStarted, brand: brand, color: color)
    }
    override func handleAction() {
        switch additionalTrailer {
        case true:
            print("Надо ехать осторожнее")
        default:
            print("Пойду спать")
        }
    }
}

let car = Car(yearOfManufacture: 2011, windowsState: .closed, gasolineTank: .full, engineStarted: .on, brand: .MAN, color: .gray)
let sportCar = SportCar(speed: 220, yearOfManufacture: 2015, windowState: .open, gasolineTank: .empty, engineStarted: .off, brand: .Volvo, color: .black)
let superSportCar = SuperSportCar(speed: 300, yearOfManufacture: 2018, windowState: .closed, gasolineTank: .empty, engineStarted: .off, brand: .BMW, color: .red)
let truck = Truk(load: 3000, yearOfManufacture: 2016, windowState: .open, gasolineTank: .full, engineStarted: .on, brand: .MAN, color: .brown)
let superTruk = SuperTruk(load: 4500, yearOfManufacture: 2019, windowState: .closed, gasolineTank: .empty, engineStarted: .off, brand: .MAN, color: .cyan)

superTruk.handleAction()
sportCar.handleAction()
truck.handleAction()
superSportCar.handleAction()

