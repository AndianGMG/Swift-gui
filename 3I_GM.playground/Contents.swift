import UIKit


struct TrunkCar {
    var carBrand: String
    var yearOfManufacture: Int
    var trunkVolume: Int
    var windowOpen: Bool
    var trunkFull: Bool
    var engineStarted: Bool
    }

let trunkCarOne = TrunkCar(carBrand: "MAN", yearOfManufacture: 1998, trunkVolume: 8000, windowOpen: true, trunkFull: true, engineStarted: true)

func trunk (trunk: TrunkCar){
    print("""
Грузовой автомобиль \(trunk.carBrand), год выпуска \(trunk.yearOfManufacture), грузоподъемностью \(trunk.trunkVolume)
""")
}
trunk(trunk: trunkCarOne)



struct SportCar {
    var carBrand: String
    var yearOfManufacture: Int
    var trunkVolume: Int
    var windiwOpen: Bool
    var trunkFull: Bool
    var engineStarted: Bool
}
    
  
    let sportCarOne = SportCar(carBrand: "Tesla Roadster", yearOfManufacture: 2015, trunkVolume: 600, windiwOpen: true, trunkFull: true, engineStarted: true)

    func sport (sport: SportCar){
        print("""
    Спортивный автомобиль \(sport.carBrand), год выпуска \(sport.yearOfManufacture), грузоподъемностью \(sport.trunkVolume)
    """)
    }
    sport(sport: sportCarOne)
