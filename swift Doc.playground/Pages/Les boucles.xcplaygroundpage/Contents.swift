import Foundation
/*: LES BOUCLES */

let lo = (name:"lo",password:"sad")
let geo = (name:"geo",password:"hate")
let gaby = (name:"gaby",password:"sad")
let users = [lo,geo,gaby]
for user in users{
    print (" user \(user.name)")
    for case ("lo","sad") in users{
   
    print ("lo a le passwoed sad")
    }
    for case (let name, let password ) in users{
        print ("\(name) a pour password \(password)")
    }
    for case let(name,password ) in users{
        print ("\(name) a pour password \(password)")
    }
    for case let(name,"sad" ) in users{
        print ("\(name) a pour password sad")
    }
}
//: [Accueil](main%20Page)
