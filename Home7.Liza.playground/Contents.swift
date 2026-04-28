import UIKit

//1
class Courses {
    
    struct Student {
        let id: Int
        var name: String
        var surname: String
        var age: Int
        
        init(id: Int, name: String, surname: String, age: Int) {
            self.id = id
            self.name = name
            self.surname = surname
            self.age = age
        }
        
        func fullName() -> String {
            return "\(name) \(surname)"
        }
        
    }
    
    init() {}
 
    var newStudents: [Student] = []
    
    func newStudent(student: Student) {
        newStudents.append(student)
    }
    
    func printNameStudent() {
        for student in newStudents {
            print("----Имя студента: \(student.fullName()), возраст студента: \(student.age), ID студента: \(student.id)")
        }
    }
}

let course = Courses()

let student1 = Courses.Student(id: 101, name: "Liza", surname: "Dorozkina", age: 20)
let student2 = Courses.Student(id: 102, name: "Misha", surname: "Kazak", age: 23)
let student3 = Courses.Student(id: 103, name: "Alesya", surname: "Gorbach", age: 25)

course.newStudents = [student1, student2, student3]

let student4 = Courses.Student(id: 102, name: "Alex", surname: "Gorh", age: 25)
let replace = course.newStudents.firstIndex(where: {$0.id == student4.id})

if let index = course.newStudents.firstIndex(where: { $0.id == student4.id }) {
    print("Найден студент с ID \(student4.id) по индексу \(index)")
    
    let oldStudent = course.newStudents[index]
    course.newStudents[index] = student4
    
    print("🔄 Замена:")
    print("   Было: \(oldStudent.name) \(oldStudent.surname)")
    print("   Стало: \(student4.name) \(student4.surname)")
} else {
    print("Студент с ID \(student4.id) не найден, добавляем нового")
    course.newStudents.append(student4)
}



course.printNameStudent()



print("-----------")
//2
class Figure {
    func calcSquare() -> Double {
        fatalError("Method should be overridden.")
    }
}

class Circle: Figure {
    var R: Double
    
    init(R: Double) {
        self.R = R
    }
    
    override func calcSquare() -> Double {
        3.14 * R * R
    }
}

class Square: Figure {
    var side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    override func calcSquare() -> Double {
        side * side
    }
}

class Parallelepiped: Figure {
    var length: Double
    var width: Double
    var height: Double

    init (length: Double, width: Double, height: Double ){
        self.length = length
        self.width = width
        self.height = height

    }
    
     override func calcSquare() -> Double {
        2 * (length * width + width * height + height * length)

     }
}

let circleSq = Circle(R: 5)
print("Площадь круга: \(circleSq.calcSquare())")

let squareSq = Square(side: 10)
print("Площадь квадрата: \(squareSq.calcSquare())")

let parallelepipedSq = Parallelepiped(length: 2, width: 4, height: 6)
print("Площадь параллелепипеда: \(parallelepipedSq.calcSquare())")



print("--------------")
//3
class Pet {
    var food: String
    var location: String
    
    init (food: String, location: String) {
        self.food = food
        self.location = location
    }
    
    func makeNoise() {}
    
    func eat () {}
    
    func sleep () {}
}

class Dog: Pet {
    override func makeNoise() {
        print("Собака гавкает")
    }
     
    override func eat() {
        print("Собака ест \(food)")
    }
}

class Cat: Pet {
    override func makeNoise() {
        print("Кот мурчит")
    }
     
    override func eat() {
        print("Кот ест \(food)")
    }
}

class Bird: Pet {
    override func makeNoise() {
        print("Птичка чирикает")
    }
     
    override func eat() {
        print("Птичка ест \(food)")
    }
}

class VetDoctor {
    func treatPet(pet: Pet) {
           print("Питомец ел: \(pet.food), местоположение: \(pet.location)")
       }
}

let dog = Dog(food: "косточку", location: "будка")
let cat = Cat(food: "рыбу", location: "аквариум")
let bird = Bird(food: "семена", location: "клетка")

let pets: [Pet] = [dog, cat, bird]

let doc = VetDoctor()

for pet in pets {
    pet.makeNoise()
    pet.eat()
    doc.treatPet(pet: pet)
}

