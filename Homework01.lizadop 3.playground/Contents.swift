import UIKit

let height : Float = 165.7 //Float
let aged = 20 // Int
let cash : UInt8 = 5 //
let weight =  52.3 // Double

var laptopIsWork = true

var res = 0

if laptopIsWork {
    res = (Int(height) * aged * Int(cash) * Int(weight))/2
} else {
    res = Int(Double(height) + weight + Double(cash)) + aged
}
print(res)

if res == 10 || res == 15 {
        print ("Результат равен 10 или 15")
    } else if res > 0 && res < 10 {
        print("Результат находиться в диапазоне от 0 до 10")
    } else if res >= 10 {
        print("Результат больше либо равен 10")
    } else {
        print("Результат меньше либо равен 0")
    }

