/*: CALCULATED TUPPLE */
import Foundation
func fizzBuzz(_ number:Int)->String{
    switch (number % 3 == 0,number % 5 == 0){
    case (true,false):
        return ("fizz")
    case (false,true):
        return ("buzz")
    case (true,true):
        return ("fizzBuzz")
    case (false,false):
        return String(number)
    }
}
fizzBuzz(3)
fizzBuzz(5)
fizzBuzz(14)
fizzBuzz(15)
//: [Accueil](main%20Page)
