import Foundation

/*
1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
*/

struct Car {
    var auto: String = "Марка авто"
    var year: Int
    var volume: Int
    var engine: Bool
    var openWindow: Bool
    var trunk: Bool
}

// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова багажника/груз определенного объема.

enum Engine {
    case start
    case off
}

enum Window {
    case open
    case close
}

enum Trunk {
    case download
    case unload
}

enum VolumTrunk {
    case volum (м3: Int)
}

// 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    
struct Auto {
    var auto: String = "Марка авто"
    var year: Int
    var volume: VolumTrunk
    var engine: Engine
    var openWindow: Window
 
}

// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

let sportCArOne = Car(auto: "audi", year: 2015, volume: 2, engine: true, openWindow: true, trunk: false)
let trunkCarOne = Car(auto: "kamaz", year: 2000, volume: 20, engine: false, openWindow: true, trunk: false)

let sportCarTwo = Auto(auto: "audi", year: 2015, volume: .volum(м3: 2), engine: .off, openWindow: .open)
let trunkCarTwo = Auto(auto: "kamaz", year: 2000, volume: .volum(м3: 20), engine: .start, openWindow: .close)

// 6. Вывести значения свойств экземпляров в консоль.

print(sportCArOne)
print(sportCarTwo)
print(trunkCarOne)
print(trunkCarTwo)
