import UIKit

//1
func exponentiation (x: Double, y: Double = 3 ) -> Double {
    pow( x, y )
}

let res1 = exponentiation(x: 3)
print("Результат возведения в степень = \(res1)")


//2
func difSquare(_ r1: Double, _ r2: Double) -> Double{
    
    func square(_ r: Double) -> Double  {
        r * r * 3.14
    }
    
    let square1 = square(r1)
    let square2 = square(r2)
    
    var res = square1 - square2
    return res
}

let difference = difSquare( 5, 2)
print( "Разница площадей двух окружностей = \(difference)")


//3
func compareStrings(a: String = "а" , b: String = "б") -> String{

    //    if a > b {
//        print ("Значение первой строки больше значения второй строки")
//    } else {
//        print ("Значение первой строки меньше значения второй строки")
//    }
//    return ""
    
    var c: String = "Значение первой строки больше значения второй строки"
    var d: String = "Значение первой строки меньше значения второй строки"
    var e: String
    e = a > b ? c : d
    return e
}

let allString = compareStrings()
print (allString)

