//: SWITCH CASE
import Foundation

let myName = "lo"

switch myName {
case "lo":
    print("salut Lo")
default:
    print ("inconnu")
}
/*:
 - avec deux variables
 */
let name = "lo"
let pass = "pass"

switch (name,pass) {
case ("lo","pass"):
    print("salut Lo")
default:
    print ("inconnu")
}
/*:
 - avec un tupple
 */
let authentification = (name:"lo",pass:"pass")

switch authentification {
case ("lo","pass"):
    print("salut Lo")
default:
    print ("inconnu")
}
/*:
 - ignorer un paramètre avec _
 */
//let authentification2 = (name:"lo",pass:"pass",    ipAdresse:"127.0.0.1")
// let authentification2 = (name:"lo2",pass:"pass",ipAdresse:"127.0.0.1")
 let authentification2 = (name:"lo3",pass:"unpass",ipAdresse:"127.0.0.1")
// let authentification2 = (name:"lo2",pass:"pass2",ipAdresse:"128.0.0.1")
func verif(authentification2:(name:String,pass:String,ipAdresse:String)){
switch authentification2 {

case ("lo3",let pass,"127.0.0.1"):
    print("salut Lo sur ta machine ton pass est \(pass)")
case ("lo","pass",_):
    print("salut Lo")
case (_,"pass",_):
    print("salut inconnu")
/*
case (_,_,_):
    print("salut n'importe quoi")*/
default:
    print ("inconnu")
}
}
verif(authentification2: authentification2)
//: [Accueil](main%20Page)
