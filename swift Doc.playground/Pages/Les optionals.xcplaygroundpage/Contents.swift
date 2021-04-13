/*: les optionals */
import Foundation

let name:String? = "lo"
let password:String? = "sad"
//let password:String? = nil
//let name:String? = nil
switch (name,password){
    case let(.some(matchedName),.some (matchedPassword)):
    print ("salut \(matchedName)")
case let(.some(name),.none):
    print ("veuillez saisir votre mot de passe")
default:
    print ("qui êtes vous ?")
}
switch (name,password){
case let(matchedName?,matchedPassword?):
    print ("salut \(matchedName)")
case let(.some(name),.none):
    print ("veuillez saisir votre mot de passe")
default:
    print ("qui êtes vous ?")
}

let data:[Any?] = ["texte",1,nil]
for case let datum? in data{
    print (datum)
}
//: [Accueil](main%20Page)