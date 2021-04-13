import Foundation

/*:
 
 ### LES PARAMETRES 'IN-OUT'
 */

func modif( _ val:inout Int, inc:Int = 1 ){
    val += inc
}
var x = 10
modif(&x)
x
modif(&x , inc: 5 )
x


//: [Accueil](main%20Page)
