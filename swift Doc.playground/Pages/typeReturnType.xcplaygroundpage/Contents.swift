import Foundation
/*:
 ### Function type & return type
 */
func stepForward(_ input:Int)->Int{
    return input + 1
}
func stepBackward(_ input:Int)->Int{
    return input - 1
}
func chooseStep(_ back:Bool)->(Int)->Int{
    // (int)->int signature des deux fonctions
    return back ? stepBackward : stepForward
}
var currentVal = 5
let moveToZero = chooseStep(currentVal>0)
while (currentVal != 0) {
    print ("currentVal = \(currentVal)")
    currentVal = moveToZero(currentVal)
}
print("zero")

//: [Accueil](main%20Page)
