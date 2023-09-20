
// В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, удалите ее.
// Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так,
// чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри
protocol PizzaMenuProtocol {
    var name: String { get }
    var cost: Double { get }
}

struct Pizza: PizzaMenuProtocol {
    enum PizzaType {
        case margherita
        case pepperoni
        case vegetarian
        case fourCheeses
        case carbonara
    }
    
    var cost: Double
    var type: PizzaType
    var isThin: [Toppings]
    var name: String
}

enum Size {
    case small
    case medium
    case large
}

struct FrenchFries: PizzaMenuProtocol {
    var cost: Double
    var size: Size
    var name: String
}

class Pizzeria {
    var menu: [PizzaMenuProtocol] = []

    func add(_ newItem: PizzaMenuProtocol) {
        menu.append(newItem)
    }

    func getMenu() -> [PizzaMenuProtocol] {
        return menu
    }
}
// Создайте протокол, в котором будут содержаться функции открытия и закрытия
protocol WorkableProtocol {
    func open()
    func close()
}
// Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3
extension Pizzeria: WorkableProtocol {
    func open() {
        print ("Открыто")
    }
    func close() {
        print("Закрыто")
    }
}
func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}

// Написать функцию, в которой происходит вычитание одного числа из другого. 
// Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания
func subtract<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}
