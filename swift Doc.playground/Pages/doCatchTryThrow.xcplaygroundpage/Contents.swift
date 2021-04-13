import Foundation

/*:
 ###    Do , Catch, Try et Throw
 */

func encrypter(_ str:String, motSecret mdp:String)->String{
    let encrypte = mdp + str + mdp
    return String(encrypte.characters.reversed())
    
}
let content = encrypter("lo" , motSecret: "1234")
let contentBadParam = encrypter("" , motSecret: "")

func encrypter2(_ str:String, motSecret mdp:String) throws ->String{
    guard mdp.characters.count>0 else{
        throw erreurs.Empty
    }
    guard mdp.characters.count>=5 else{ throw erreurs.Short }
    let encrypte = mdp + str + mdp
    return String(encrypte.characters.reversed())
    
}
enum erreurs: Error{
    case Empty
    case Short
}
do{
    let content2 = try encrypter2("lo" , motSecret: "motdepasse")
    content2
}catch erreurs.Empty {
    print("le mot de passe ne peut etre vide ")
}catch erreurs.Short {
    print("le mot de passe doit contenir 6 caracteres minimum ")
}


//: [Accueil](main%20Page)
