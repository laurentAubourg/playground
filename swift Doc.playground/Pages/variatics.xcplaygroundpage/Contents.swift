import Foundation

/*:
 ### LES PARAMETRES 'VARIATIC'
 */

func calculMoyenne(_ numbers:Double...)->Double{
    var total:Double = 0
    for number in numbers{
        total += number
    }
    return(total / Double(numbers.count))
}

calculMoyenne(3,2)
calculMoyenne(9.5,0.5)


//: [Accueil](main%20Page)
