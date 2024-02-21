import UIKit

// MARK: 1 task:
/*
1) Создайте массив учеников из 12 мальчиков
2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert.
Выведите результат в консоль.
3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек 
*/

class Students {
    enum Gender{
        case boy
        case girl
    }
    
    var name: String
    var gender: Gender
    
    init(name: String, gender: Gender) {
        self.name = name
        self.gender = gender
    }
    
    func description() -> String{
        return "Name: \(name), gender: \(gender)"
    }
}


var alex: Students = Students.init(name: "Alex", gender: .boy)
var michel: Students = Students.init(name: "Michel", gender: .boy)
var robin: Students = Students.init(name: "Robin", gender: .boy)
var andrew: Students = Students.init(name: "Andrew", gender: .boy)
var mattew: Students = Students.init(name: "Mattew", gender: .boy)
var peter: Students = Students.init(name: "Peter", gender: .boy)
var chris: Students = Students.init(name: "Chris", gender: .boy)
var tom: Students = Students.init(name: "Tom", gender: .boy)
var dave: Students = Students.init(name: "Dave", gender: .boy)
var rick: Students = Students.init(name: "Rick", gender: .boy)
var gustav: Students = Students.init(name: "Gustav", gender: .boy)
var patrick: Students = Students.init(name: "Patrick", gender: .boy)


var students: [Students] = [alex, michel, robin, andrew, mattew, peter, chris, tom, dave, rick, gustav, patrick]
    
students.append(Students(name: "Kate", gender: .girl))
students.append(Students(name: "Naomi", gender: .girl))
students.append(Students(name: "Ann", gender: .girl))
students.append(Students(name: "Helen", gender: .girl))
students.insert(Students(name: "Pearl", gender: .girl), at: 10)
students.insert(Students(name: "Megane", gender: .girl), at: 3)
students.insert(Students(name: "Violet", gender: .girl), at: 15)


for (index, student) in students.enumerated() {
    print("Index: \(index) value: \(student.description())")
}


var newStudents = students.sorted(by: { $0.gender != $1.gender } )

newStudents.removeFirst(2)
newStudents.removeLast(7)

for student in newStudents {
    print(student.description())
}



// MARK: Task 2:
/*
 Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль.
 Всё вывести в консоль.
 */

struct Website {
    var name: String
    var surname: String
    var nickName: String
    var email: String
    var password: String
    
    func enterYourPersonalInfo() {
        print("Name: \(name), surname: \(surname), nickname: \(nickName), email: \(email), password: \(password)")
    }
}

var myWebsite: Website = Website(name: "Anastasia", surname: "Voronik", nickName: "a_voronik", email: "avoronik@icloud.com", password: "12hEllo34")

myWebsite.enterYourPersonalInfo()



// MARK: Task 3:
/*
 "RPG game"
 Создайте 3 класса: Орк, Человек, Эльф.
 
 У человека есть свойства weaponDamage, health, armor и evasion и функция, которая атакует друго персанажа (отнимаем колличество weaponDamage атакующего от health атакуемого а так же учитывает особенности evasion и armor
 ).
 
 Эльф и Орк — наследники Человека.
 
 Орк - имеет уникальное свойстово (10 брони), которая тратиться до health (10 поинтов) при атаке на него,
    но при этом у него самая слабая атака (3 урона) и он не умеет уклонятся
 
 Эльф - уклоняется от первой атаки, но умеет самое малое количество жизней (8 поинтов) и не имеет брони, но у него самая большая атака (6 урона)
 
 Человек - не умеет уклонятся, но у него есть 5 брони и среднее колличество жизней(9 поинтов) и средняя атака (4 урона)
 
 Задача устроить турнир между разными войнами
 
 Вывести в кансоль описание каждого класса и его характеристики перед турниром
 
 В консоли выводить описание поочередной атаки каждого бойца
 
 Например:
 "Эльф атакует Орка и наносит 6 урона. У Орк осталось 2 брони и 12 жизней"
 "Орк атакует Эльф и промахивается" (сработало уклонение от первой атаки)
 
 
 и так далее по очереди один не умрет

 провести разные бои
 используйте весь арселал языка Swift
 */

class Human {
    var weaponDamage: Int
    var health: Int
    var armour: Int
    var evasion: Int
    
    init(weaponDamage: Int, health: Int, armour: Int, evasion: Int) {
        self.weaponDamage = weaponDamage
        self.health = health
        self.armour = armour
        self.evasion = evasion
    }
}

class Orc: Human {
     
}

class Elf: Human {
    
}

