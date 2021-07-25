import Foundation

// 1.Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

protocol Car: AnyObject {
    var brandCar: String {get}
    var releasedate: Int {get}
    var colourCar: colour {get set}
}

enum colour {
    case green
    case black
    case red
}

func data(object: Car) {
    print(object.brandCar, object.releasedate, object.colourCar)
}

// 2.Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

extension Car {
    func change(changeColour: colour) {
        colourCar = changeColour
    }
}

// 3.Создать два класса, имплементирующих протокол «Car»: trunkCar и sportCar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

class TrunkCar: Car {
    var brandCar: String
    var releasedate: Int
    var colourCar: colour
    var trailer: Bool
    
    init(brandCar: String, releasedate: Int, colour: colour, trailer: Bool) {
        self.brandCar = brandCar
        self.releasedate = releasedate
        self.colourCar = colour
        self.trailer = trailer
    }
}

class SportCar: Car {
    var brandCar: String
    var releasedate: Int
    var colourCar: colour
    var suspension: Bool
    
    init(brandCar: String, releasedate: Int, colour: colour, suspension: Bool) {
        self.brandCar = brandCar
        self.releasedate = releasedate
        self.colourCar = colour
        self.suspension = suspension
    }
}

// 4. Для каждого класса написать расширение, имплементирующее протокол «CustomStringConvertible».

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Авто \(brandCar). Дата выпуска \(releasedate). Цвет кузова\(colour.self). Наличие прицепа \(trailer)"
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Авто \(brandCar). Дата выпуска \(releasedate). Цвет кузова\(colour.self). скоростное крыло\(suspension)"
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

var man = TrunkCar(brandCar: "Man", releasedate: 1999, colour: .black, trailer: true)
var audi = SportCar(brandCar: "audi", releasedate: 2015, colour: .green, suspension: false)

// 6. Вывести сами объекты в консоль.
 
print(man)
print(audi)
