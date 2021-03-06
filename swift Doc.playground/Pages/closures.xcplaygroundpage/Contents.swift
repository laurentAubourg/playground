import Foundation

/*: LES CLOSURES */

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let plusDix = makeIncrementer(forIncrement: 10)
let plusSept = makeIncrementer(forIncrement: 7)
plusDix()
plusDix()
plusDix()
plusSept()

var lesInc = (sept:plusSept(),dix:plusDix())
lesInc
lesInc
plusSept()
lesInc
lesInc = (sept:plusSept(),dix:plusDix())
lesInc


struct Constants {
    static let someNotification = "TEST"
}
Constants.someNotification
// set

var monSet:Set<String>
monSet=["a","b","c"]
monSet.insert("d")
let removeItem = monSet.remove("c")
monSet
removeItem
monSet.contains("a")
monSet.contains("c")
for lettre in monSet{
    "lettre =  \(lettre )"
    
}

/*: closure 2 */

let greatPerson = {(name: String) in
    print("hello, \(name)!")
}
greatPerson("taylor")

func runSomeClosure(_ closure:(String) -> Void){
    closure("toto")
}
runSomeClosure(greatPerson)

// ********* closure capturing *******

func testCapture() -> () -> Void {
    var counter = 50
    return {
        counter += 1
        print ( " counter is now : \(counter)")
        
    }
}
let greatPerson2 = testCapture()
greatPerson2()
greatPerson2()
greatPerson2()
let greatCopy = greatPerson2
print(greatCopy())

// ********* Closure Shorthand Syntax *****

let names = ["Michael Jackson","Michael Swift", "Michael Adlins", "Michael Jordan"]
let result1 = names.filter({(name:String)->Bool in
    if name.hasPrefix("Michael "){
        return true
    }else{
        return false
    }
    }
)
print (result1.count)
let result2 = names.filter({name in
    if name.hasPrefix("Michael "){
        return true
    }else{
        return false
    }
    }
)
print(result2.count)
let result3 = names.filter({name in
    return name.hasPrefix("Michael ")
    }
)
print(result3.count)
let result4 = names.filter{name in
    return name.hasPrefix("Michael ")
}

print(result4.count)
let result5 = names.filter{name in
    name.hasPrefix("Michael ")
}

print(result5.count)
let result6 = names.filter{
    $0.hasPrefix("Michael ")
}

print(result6.count)
let result7 = names.filter{$0.hasPrefix("Michael ")}

print(result7.count)

//******* Functions As Closures **********


let input = "My havorite album is Fearless"
input.contains("album")


let words = ["1999","Fearless","Red"]
words.contains(where: input.contains)

let numbers = [1, 3, 5, 7, 9]
numbers.reduce(0){(int1,int2) -> Int in
    return int1 + int2
}

/**

    ###   ajouterDeux (a: Int) -> Int { (...) }
 **/
  
var ajouterDeux = {(a:Int) -> Int in
    return a + 2
}
ajouterDeux(5)
/**
    ###   envoyerMail(message: String, destinataire: String) -> Bool { (...) }
 **/

let envoyerMail = {(message: String, destinataire: String) -> Bool  in
  
    if(message != "" && destinataire != ""){
    return true
    }
    return false
}

envoyerMail("message","@destinataire")
envoyerMail("","@destinataire")
/**
    ###   cocherLaCase(aCoch??: Bool) { (...) }
 **/

let cocherLaCase = { (aCoche: Bool) in
"case Coch??e = \(aCoche)"
}
cocherLaCase(true)
cocherLaCase(false)
/**
    ###  verrouiller() { (...) }
 **/

let verrouiller = { () ->Void in
let state = "locked"
    state
}
verrouiller()
/**
    ###  composerNumero(_ numero: Int) { (...) }
 **/

let composerNumero = {(_ numero: Int) in
numero
}
composerNumero (1234)

struct Ball{
    var img:String?
    var color:String?
}
struct result{
    var goodPlace:Bool = false
    var goodColor:Bool = false
}

func checkResult(color:String,selectId:Int,img:String){
    var  _arrayResult = [result(),result(),result(),result(),result()]
    let drawingOfLot =  [Ball(img:"s3.png" , color: "cyan"),Ball(img:"s2.png" , color: "red"),Ball(img:"s1.png" , color: "orange")]
    let selectColor = "red"
    let selectImg = img
   
    for index in 0..<drawingOfLot.count{
        print ("--\(drawingOfLot[index].color)")
        if (drawingOfLot[index].color ==  selectColor){
            _arrayResult[index].goodColor = true
           
            if (index == selectId  ){
                _arrayResult[index].goodPlace  = true
            }
            print ("Selection d'une balle id: \(selectId) = \n \(_arrayResult)")
            return
        }else{
          //  _arrayResult[index].goodColor = false
         //  _arrayResult[index].goodPlace  = false
        }
        print ("Selection d'une balle id: \(selectId) = \n \(_arrayResult)")
    }

}
checkResult(color: "cyan", selectId:0, img: "ww")



