import Foundation

/*:
 ### valeurs de retour multiple ( emploie de Tupple)
 */
func minMax(_ array:[Int],debug d : Bool = false)->(min:Int,max:Int)?{
    var min :Int = array[0]
    var max : Int = array[0]
    for value in array[1..<array.count]{
        if value < min {
            min = value
        }else if value > max {
            max = value
        }
    }
    
    if d{
        return nil
    }
    return (min,max)
    
}
var a = [7,18,2,55,1]

minMax((a))?.min
minMax((a),debug: true)?.max

//: [Accueil](main%20Page)
