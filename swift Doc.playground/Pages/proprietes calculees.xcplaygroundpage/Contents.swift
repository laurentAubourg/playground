import Foundation

/*:
 ### PROPRIETES CALCULEES
 */
class personne{
    var nom : String?
    var prenom : String?
    var nomComplet : String{
        get{
            return nom! + " " + prenom!
        }
        set{
            let array = newValue.components(separatedBy: " ")
            nom = array.first
            prenom = array.last
        }
        /*:
         
         si pas de set la variable est en read only on peut directement écrire
         var nomComplet : String{
         return nom! + " " + prenom!
         } 
         */
    }
}
var moi = personne()
moi.nom = "Aubourg"
moi.prenom = "laurent"
moi.nomComplet
moi.nomComplet = "Aub Lo"
moi.nom
moi.prenom
moi.nomComplet

//: [Accueil](main%20Page)
