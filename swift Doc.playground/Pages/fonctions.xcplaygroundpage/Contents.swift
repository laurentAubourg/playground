import Foundation

/*:
 ###          FUNCTION
 */
func bonjour(_ personneName:String) -> String
{
    return  " 🐥 bonjour " + personneName + " ! "
    
}
bonjour("laurent")

func bonjour(_ personneName:String,_  dejavu : Bool, pipo troisiemeParam : Int, dernierParam :Int) -> String
{
    if(dejavu){
        return  " re bonjour " + personneName + " ! "
    }else{
        return  " 🐥 bonjour " + personneName + " - troisiemeParam  = \(troisiemeParam) dernierParam  = \(dernierParam)"
        
    }
}
/*:
 les parametre de la fonction sont de la forme nomExterne nomInterne . l'utilisation du _ comme nom externe signifie que l'on ne nomme pas le parametre lors de l'appel de la fonction .
*/
bonjour("laurent",  true, pipo: 1, dernierParam : 2 )
bonjour("laurent",  false, pipo: 1, dernierParam : 2 )

/*:
 true nom extene = _ non précisé lors de l'appel
 pipo nom externe du parametre troisiemeParam
 dernierParam pas de nom externe précisé utilisation du nom interne
*/
//: [Accueil](main%20Page)
