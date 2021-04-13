/*: Ranges*/
import Foundation

let age = 36
switch age{
case 0 ..< 10:
    print("entre 0 et 10")
case 10 ..< 70:
    print ("entre 10 et 70")
default:
    print ("pas né ou très vieux")
}

if 0 ..< 10 ~= age{
    print("entre 0 et 10")
}else if (10 ..< 70).contains( age){
    print ("entre 10 et 70")
}else{
    print ("pas né ou très vieux")
}
//: [Accueil](main%20Page)
