import UIKit

protocol Shape {
    var area: Double { get }
    var perimeter: Double { get }
    func description()
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }

    var perimeter: Double {
        return 2 * (width + height)
    }

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func description() {
        print("Площадь прямоугольника: \(area), Периметр прямоугольника: \(perimeter)")
    }
}
var rectangel = Rectangle(width: 2, height: 4)
rectangel.description()

class Circle: Shape {
    var radius: Double

    var area: Double {
        return Double.pi * radius * radius
    }

    var perimeter: Double {
        return 2 * Double.pi * radius
    }

    init(radius: Double) {
        self.radius = radius
    }

    func description() {
        print("Площадь круга: \(area), Периметр круга: \(perimeter)")
    }
}

var circle = Circle(radius: 2)
circle.description()
