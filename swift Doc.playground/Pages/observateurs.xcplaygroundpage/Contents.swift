import Foundation

/*:
 ### LES OBSERVATEURS DE PROPRIETE
 */
class Player{
    var name : String = "toto lariflette"{
        willSet{
            "\(NSDate().timeIntervalSince1970) sur le point de changerle nom en \(newValue) )"
        }
        didSet{
            "\(NSDate().timeIntervalSince1970) a changé le nom en \(oldValue) )"
        }
    }
}
var newPlayer = Player()
newPlayer.name = "bidule"

//: [Accueil](main%20Page)
