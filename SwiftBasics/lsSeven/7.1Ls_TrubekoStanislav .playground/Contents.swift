import Foundation

// 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.

struct Longboard {
    var style: String
    var bearning: Bool
    var size: Int
    var speed: Int
}

enum Defective: Error {
    case noBord                  // доска отсутсвует
    case brokenBearings          // разбитые подшипники
    case sizeError               // превышение длины деки
    case speedError              // слишком маленькая скорость
}

class ShowCase {
    
    var board = [
        "carvingBoard": Longboard(style: "carving", bearning: false, size: 100, speed: 50),
        "cruisingBoard": Longboard(style: "cruising", bearning: true, size: 150, speed: 40),
        "downhillBoard": Longboard(style: "downhill", bearning: true, size: 110, speed: 80),
        "dancngBoard": Longboard(style: "dancng", bearning: true, size: 110, speed: 30)
    ]
    
    var maxSizeBoard = 120
    var minSpeedBoard = 40
    
    func takeBoard (itemNamed name: String) throws {
        
        guard let boardCase = board[name] else {
            throw Defective.noBord
        }
        
        guard boardCase.bearning == true else {
            throw Defective.brokenBearings
        }
        
        guard boardCase.size < maxSizeBoard else {
            throw Defective.sizeError
        }
        
        guard boardCase.speed > minSpeedBoard else {
            throw Defective.speedError
        }
        
    }
}

print(name)





