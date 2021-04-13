import Foundation

/*:
 ### NOTIFICATION CENTER
 */
let nc : NotificationCenter = NotificationCenter.default
let NOTIF = NSNotification.Name("notificatin_de_test")
let ANSWER_TO_NOTIF = NSNotification.Name("answerNotif")

/*: ------------ ClassA ------------ */

class ClassA{
    var message : String
    init()
    {
        message = "no message"
        addObserver()
        
    }
    func postMessage(_ num : Int ){
        nc.post(name: NOTIF,
                object: nil,
                userInfo : ["message":num])
    }
    func addObserver(){
        nc.addObserver(self,
                       selector: #selector(AnsweNotifHandler),
                       name : ANSWER_TO_NOTIF,
                       object : nil)
    }
    @objc private func AnsweNotifHandler(notification:NSNotification) -> Void {
        guard  let userInfo : [NSObject : AnyObject]? = notification.userInfo as [NSObject : AnyObject]?? else {
            print("No userInfo found in notification")
            return
        }
        message = "[ClassA] :"+(notification.userInfo!["message"] as? String)!
        
    }
}

//------------ ClassB

class ClassB{
    var message : String
    init()
    {
        message = "no message"
        addObserver()
        
    }
    func addObserver(){
        nc.addObserver(self,
                       selector: #selector(notifHandler),
                       name :  NOTIF,
                       object : nil)
    }
    @objc private func notifHandler(notification:NSNotification) -> Void {
        guard  let userInfo : [NSObject : AnyObject]? = notification.userInfo as [NSObject : AnyObject]?? else {
            print("No userInfo found in notification")
            return
        }
        let msg = (notification.userInfo!["message"] as? Int)!
        message = "[ClassB] reçoit le message de ClassA avec la valeur \(msg)"
    }
}
//------------ ClassC
class ClassC{
    init()
    {
        addObserver()
        return
    }
    func addObserver(){
        nc.addObserver(self,
                       selector: #selector(notifHandler),
                       name : NOTIF,
                       object : nil)
    }
    @objc private func notifHandler(notification:NSNotification) -> Void {
        guard  let userInfo : [NSObject : AnyObject]? = notification.userInfo as [NSObject : AnyObject]?? else {
            print("No userInfo found in notification")
            return
        }
        nc.post(name: ANSWER_TO_NOTIF,
                object: nil,
                userInfo : ["message":"ClassC repond au  message de ClassA "])
    }
    
}

let maClassA = ClassA()
let maClassB = ClassB()
let maClassC = ClassC()
maClassA.postMessage(5)
maClassB.message
maClassA.message
maClassA.postMessage(150)
maClassB.message
maClassA.message
//: [Accueil](main%20Page)
