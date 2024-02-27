import UIKit

// MARK: 1 task:


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


class Human {
    var type: String
    var name: String
    var weaponDamage: Int    // урон
    var health: Int         // здоровье
    var armour: Int        // броня
    var evasion: Bool     // уклонение
    
    init(type: String = "Человек", name: String, weaponDamage: Int = 4, health: Int = 9, armour: Int = 5, evasion: Bool = false) {
        self.type = type
        self.name = name
        self.weaponDamage = weaponDamage
        self.health = health
        self.armour = armour
        self.evasion = evasion
    }
    
    func description() {
        print("Класс персонажа: \(type), имя: \(name), здоровье: \(health), наносимый урон: \(weaponDamage), броня: \(armour), уклонение: \(evasion)")
    }
    func attacks( attaked:(Human), _ attacking:(Human)) {
  
        if attaked.health > 0 {
            if attaked.evasion == true {
                print("\(attacking.name) промахивается. Сработало уклонение от первой атаки. Урон не нанесён.")
                attaked.evasion = false
            }
            if attaked.evasion == false {
    
                if attaked.armour > 0 {
                    attaked.armour -= attacking.weaponDamage
                    print("Количество брони персонажа \(attaked.name) : \(attaked.armour), оставшиеся жизни \(attaked.health)")
                    print("Количество брони персонажа \(attacking.name) : \(attacking.armour), оставшиеся жизни \(attacking.health) ")
                } else {
                    attaked.armour = 0
                    attaked.health -= attacking.weaponDamage
                    print("Количество жизней персонажа \(attaked.name) : \(attaked.health), осталось брони: \(attaked.armour) ")
                    print("Количество жизней персонажа \(attacking.name) : \(attacking.health), осталось брони: \(attacking.armour) ")
                }
            }
        }
    }
}
    
  





class Orc: Human {
    override init(type: String = "Орк", name: String, weaponDamage: Int = 3, health: Int = 10, armour: Int = 10, evasion: Bool = false) {
        super.init(type: type, name: name, weaponDamage: weaponDamage, health: health, armour: armour, evasion: evasion )
    }
    override func description() {
        print("Класс персонажа: \(type), имя: \(name), здоровье: \(health), наносимый урон: \(weaponDamage), броня: \(armour), уклонение: \(evasion)")
    }
}
     


class Elf: Human {
   
    override init(type: String = "Эльф", name: String, weaponDamage: Int = 6, health: Int = 8, armour: Int = 0, evasion: Bool = true) {
        super.init(type: type, name: name, weaponDamage: weaponDamage, health: health, armour: armour, evasion: evasion)
    }
    override func description() {
        print("Класс персонажа: \(type), имя: \(name), здоровье: \(health), наносимый урон: \(weaponDamage), броня: \(armour), уклонение: \(evasion)")
    }
}

var human: Human = Human(name: "Мишель")
var orc: Orc = Orc(name: "Азор")
var elf: Elf = Elf(name: "Дессида")

func AllCharactersDescription(){
   print("Список участников турнира:")
    print("1. Класс: \(human.type), имя: \(human.name)")
    print("2. Класс: \(orc.type) , имя: \(orc.name)")
    print("3. Класс: \(elf.type) , имя: \(elf.name)")
}

 AllCharactersDescription()

extension Human {
    func fight(attacking: Human, attaked: Human) {
        print("\(attacking.name) вызывает на бой \(attaked.name)")
        print("Информация о бойцах:")
        print(attacking.description())
        print(attaked.description())
        print("Бой начинается")
        while attaked.health >= 0 && attacking.health >= 0 {
            print("\(attacking.name) атакует \(attaked.name) и наносит \(attacking.weaponDamage) урона")
            attacking.attacks(attaked: attaked, attacking)
           
            
            if attaked.health <= 0 {
                print("Победу одержал \(attacking.name)")
                break
            }
            print("\(attaked.name) ответно атакует \(attacking.name) и наносит \(attaked.weaponDamage) урона")
            attaked.attacks(attaked: attacking, attaked)
         
            
            if attacking.health <= 0 {
                print("Победу одержал \(attaked.name)")
                
                break
            }
        }
        
        print("Бой окончен")
    }
}

print("Раунд 1.")

elf.fight(attacking: elf, attaked: human)

print("Раунд 2.")

human.fight(attacking: human, attaked: orc)

print("Раунд 3.")

orc.fight(attacking: orc, attaked: human)

print("Турнир завершён")
