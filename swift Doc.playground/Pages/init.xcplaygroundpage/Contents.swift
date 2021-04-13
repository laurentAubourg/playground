import Foundation

/*:
 ### INIT
 */

class ClassA0{
    var name : String
    var score : Int
    
    init(){
        name = "lo"
        score = 999999
    }
    
    init (name: String){
        /*:
         - parameters:
         - name: le nom
         */
        
        self.name = name
        score = 0
    }
    func description()->String{
        return ("nom = \(name) score =\(score)")
    }
}
class ClassB0{
    var name : String?
    var score : Int?
    func description()->String{
        return ("nom = \(String(describing: name)) score =\(String(describing: score))")
    }
}
let c1 = ClassA0()
let c2 = ClassA0(name : "toto")
var c3 = ClassB0()
c1.description()
c2.description()
c3.description()
c3.score = 3
c3.description()

//: [Accueil](main%20Page)
