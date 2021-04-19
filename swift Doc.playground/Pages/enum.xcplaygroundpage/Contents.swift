import Foundation
/*:
 ###             ENUM
 */

enum nombres:Int {
    case one = 1, two,three,four
}
nombres.four.rawValue
nombres.four.hashValue
nombres(rawValue: 2)
nombres(rawValue: 6)


// RAWVALUE


enum planete : Int {
    case Mercure = 1,
    Venus,
    Terre,
    Mars,
    Jupiter,
    Saturn,
    Uranus,
    Pluton
}
let positionDeLaPlanete = 5
if let unePlanete = planete (rawValue: positionDeLaPlanete  ){
    switch unePlanete {
    case .Terre:
        print ("maison", separator: "",terminator: " !")
    default:
        print ("on est pas arrivé" , separator: "", terminator: " !" )
    }
}else{
    print ("y a que 8 planetes chez nous ", separator: "", terminator: " !" )
}
planete.self
//: [Accueil](main%20Page)
