import UIKit

var str = "Hello, playground"

//Basic function
func sayHello() {
    print("hello")
}
sayHello()

func sayHelloTo(_ name:String,_ age:Int) {
    print("Hello \(name), you're \(age) years old")
}
sayHelloTo("Jack", 29)

func addFourTo(x:Int) -> Int {
    return x+4
}

print(addFourTo(x: 10))
