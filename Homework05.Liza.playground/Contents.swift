import UIKit

//1. оипределить функцию которая вернет найбольшее число среди трех заданных целых(опциональных) чисел переданных как входные параметры. Тип возвращаемого значения тоже должно быть опциональным. Вывести в консоль сообщение "Число [найбольшее число] больше всех среди чисел: [первое заданное число], [второе заданное число], [третье заданное число]"

//2.Написать функцию square, принимающую 2 аргумента — сторону квадрата и действие(enum), и выполняющую 1 из 3 действий: периметр квадрата, площадь квадрата и диагональ квадрата.
//В консоль вывести "[действие] равен [значение]"
//Например, "Периметр квадрата равен 25" или "Площадь квадрата равна 60"

//3. определить функцию которая будет считать сумму всех чисел четырехзначного входного параметра целочисленного типа. Если число не четырехзначное - выводить ошибку в консоль.

//4. Функция для определения того, является ли число простым


/*
Задачи на рекурсию
1. Таблица умножения заданного числа. Число как входной параметр. В консоль вывод от 1 до 10. Не использовать цикл и массив.
2. Перевести в двоичную систему счисления вводимую в десятичной системе счисления число. Для перевода десятичного числа в двоичное написать функцию.
3.Нахождение НОД (наибольшего общего делителя)
4.Подсчет количества цифр в числе
5.Сумма цифр числа
*/

func number (a:Int?, b:Int?, c:Int?) -> Int? {
    
    guard let a = a, let b = b, let c = c else {
        return nil
    }
   
    if a > b && a > c {
        print("\(a) больше всех среди чисел \(b), \(c)")
        return a
    }
    
    else if b > a && b > c {
        print("\(b) больше всех среди чисел \(a), \(c)")
        return b

    }
    
    else {
        print("\(c) больше всех среди чисел \(a), \(b)")
        return c
    }
}
    
var res1 = number(a:1, b:5, c:8)
print(res1)



func getMaxNumber(optX: Int?, optY: Int?, optZ: Int?) -> Int? {
    
    guard let x = optX, let y = optY, let z = optZ else {
        return nil
    }
    
    var maxValue : Int
    
    if x > y && x > z {
        maxValue = x
    }
    
    else if y > x && y > z {
        maxValue = y
    }
    
    else {
        maxValue = z
    }
    
    return maxValue
}

let optX: Int? = 5
let optY: Int? = 9
let optZ: Int? = 7

let numberX = optX ?? 0
let numberY = optY ?? 0
let numberZ = optZ ?? 0

if var maxNumber = getMaxNumber(optX: optX , optY: optY, optZ: optZ) {
    print ("Число \(maxNumber) больше всех среди чисел: \(numberX),\(numberY), \(numberZ)")
} else {
    print("maxNumber = nil")
}

//2

enum Action {
    case perimeter, square, diagonal
    
    var text : String {
        switch self {
        case .perimeter:
            return "Периметр равен"
        case .square:
            return "Площадь равна"
        case .diagonal:
            return "Диагональ равна"
        
        }
    }
}
      
func square (a: Int, action: Action ) -> Int {
     
     var result: Int
    
     switch action {
     case .square:
         result = a * a
     case.perimeter:
         result = 4 * a
     case .diagonal:
         result = Int(Double(a) * sqrt(2))
  }
    
     return result
}
var getAction: Action = .diagonal
var res = square( a: 5, action: getAction)

print ("\(getAction.text) = \(res)")


func square (side: Int, action: Action ) -> Int {

    var result3: Int
    
    switch action {
    case .square:
        result3 = side * side
        print("Площадь \(result3)")
    case.perimeter:
        result3 = 4 * side
        print("Периметр равен \(result3)")
    case .diagonal:
        result3 = Int(Double(side) * sqrt(2))
        print("Диагональ равна \(result3)")
 }
    return result3
}

var a = square(side: 3, action: .perimeter )
print(a)

// 4 Нахождение нод. Задача на рекурсию

func NOD (x: Int, y: Int) -> Int{
    if y == 0 {
        return x
    }
    return NOD(x: y, y: x % y)
}

var resNOD = NOD(x: 27, y: 81)
print("Наибольший общий делитель равен \(resNOD)")

