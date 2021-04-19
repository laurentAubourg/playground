import Foundation

//: LES PROTOCOLES

protocol Bird{
    var name : String { get }
    var canFly : Bool { get }
}
extension Bird  {
    // Flyable birds can fly!
    var canFly: Bool { return false }
    var name : String { return "piaf ne volant pas"}
}
extension Bird where Self: Flyable {
    // Flyable birds can fly!
    var canFly: Bool { return true }
    var name : String { return "piaf volant"}
}
protocol Flyable {
    var airspeedVelocity: Double { get }
}
struct flappyBird : Bird, Flyable{
    //  let name: String
    //  let canFly = true
    let flappyAmplitude: Double
    let flappyFrequency: Double
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}
struct penguin : Bird{
   
}
var b = flappyBird(flappyAmplitude:2.2,flappyFrequency:5.2)
print("b.canFly = \(b.canFly)")
print("b.airspeedVelocity = \(b.airspeedVelocity)")
var Penguin = penguin()

    print("b s'appelle \(b.name)")
    print("penguin s'appelle \(Penguin.name)")
    print("penguin sait voler \(Penguin.canFly)")

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" } // surcharge where Self: Flyable  =>
    let version: Double
    // pas besoin il est flyable =>  let canFly = true
    
    // Swift is FAST!
    var airspeedVelocity: Double { return 2000.0 }
}
enum UnladenSwallow: Bird, Flyable {
    case African
    case European
    case Unknown
    
    var name: String {
        switch self {
        case .African:
            return "African"
        case .European:
            return "European"
        case .Unknown:
            return "What do you mean? African or European?"
        }
    }
    
    var airspeedVelocity: Double {
        switch self {
        case .African:
            return 10.0
        case .European:
            return 9.9
        case .Unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}


//: [Accueil](main%20Page)
