import UIKit

class Spaceship {
    
    var fuelLevel = 100
    var name = ""
    
    func cruise() {
        print("\(name) is cruising")
    }

    func thrust() {
        print("\(name) is thrusting")
    }
}

var myShip:Spaceship = Spaceship()
myShip.name = "Titan"
myShip.cruise()
