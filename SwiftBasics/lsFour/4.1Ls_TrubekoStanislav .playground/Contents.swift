import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum Engine {
    case start
    case off
}

enum Window {
    case open
    case close
}

class Auto {
    var auto: String = "Марка авто"
    var engine: Engine
    var openWindow: Window
    init (auto: String, engine: Engine, openWindow: Window) {
        self.auto = auto
        self.engine = engine
        self.openWindow = openWindow
    }
}

/*
2. Описать пару его наследников TrunkCar и SportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет TrunkCar, а какие – SportCar. Добавить эти действия в перечисление.
 */

enum Trailer {
    case dumpTruck
    case tank
}

enum Suspension {
    case redColor
    case greenColor
}

class TrunkCar: Auto {
    var trailer: Trailer
    static var carCount = 0
    init (auto: String, engine: Engine, openWindow: Window, trailer: Trailer) {
        self.trailer = trailer
        super.init(auto: auto, engine: engine, openWindow: openWindow)
        TrunkCar.carCount += 1
    }
    
// 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
    
    static func countInfo() {
        print("Выпущено \(self.carCount) автомобилей")
    }
}

class SportCar: Auto {
    var suspension: Suspension
    static var carCount = 0
    init (auto: String, engine: Engine, openWindow: Window, suspension: Suspension) {
        self.suspension = suspension
        super.init(auto: auto, engine: engine, openWindow: openWindow)
        SportCar.carCount += 1
    }
    
// 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
        
    static func countInfo() {
        print("Выпущено \(self.carCount) автомобилей")
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

let trunkCar = TrunkCar(auto: "Man", engine: .start, openWindow: .open, trailer: .dumpTruck)
let sportCarOne = SportCar(auto: "AudiA4", engine: .off, openWindow: .close, suspension: .redColor)
let sportCarTwo = SportCar(auto: "AudiA5", engine: .start, openWindow: .open, suspension: .greenColor)
TrunkCar.countInfo()
SportCar.countInfo()

//  6. Вывести значения свойств экземпляров в консоль.

print(trunkCar.auto," двигатель \(trunkCar.engine)",", окна \(trunkCar.openWindow)",", тип прицепа \(trunkCar.trailer)")
print(sportCarOne.auto,", двигатель \(sportCarOne.engine)",", окна \(sportCarOne.openWindow)",", цвет машины \(sportCarOne.suspension)")
print(sportCarTwo.auto,", двигатель \(sportCarTwo.engine)",", окна \(sportCarTwo.openWindow)",", цвет машины \(sportCarTwo.suspension)")
