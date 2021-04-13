import Foundation

/*:
 ###  RECURSION
 */
indirect enum operation{
    case Number(Int)
    case Addition(operation,operation)
    case Multiplication(operation,operation)
}

func evaluer(_ expression : operation)->Int{
    
    switch expression{
    case let .Number(value):
        return value
    case let .Addition(gauche,droite ):
        return evaluer(droite) + evaluer(gauche)
    case let .Multiplication(gauche,droite ):
        return evaluer(droite) * evaluer(gauche)
    }
    
}

let cinq = operation.Number(5)
let quatre = operation.Number(4)
let sum = operation.Addition(quatre, cinq)
let product = operation.Multiplication(sum, operation.Number(2))

//        (4 + 5) * 2 -> 18
evaluer(product)
//: [Accueil](main%20Page)