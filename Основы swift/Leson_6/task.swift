// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, 
// зарплата и должность. Должностей пока может быть две: или кассир, или повар. 
// Добавить в класс пиццерии массив с работниками

enum PizzaType {
    case margherita
    case pepperoni
    case vegetarian
    case fourCheeses
    case carbonara
}

enum Topping {
    case ketchup
    case tomatoes
    case cheese
}

struct Pizza {
    let pizzaType: PizzaType
    let crustType: String
    let toppings: [Topping]
    let price: Double
}

enum Position { // Добавление нового работника в массив
    case cashier
    case cook
}

struct Employee { // Добавление Имя, зарплата и должность
    let name: String
    let salary: Double
    let position: Position
}

class PizzaShop {
    private var availablePizzas: [Pizza]
    private var employees: [Employee] = []

    init() {
        availablePizzas = [
            Pizza(pizzaType: .margherita, crustType: "Маргарита с кетчупом и сыром", toppings: [.tomatoes, .cheese], price: 455.99),
            Pizza(pizzaType: .pepperoni, crustType: "Пепирони с кетчупом и сыром", toppings: [.ketchup, .cheese], price: 789),
            Pizza(pizzaType: .vegetarian, crustType: "Вегетарианская пицца с кетчупом и сыром", toppings: [.tomatoes, .cheese], price: 657),
            Pizza(pizzaType: .fourCheeses, crustType: "Четыре Сыра с томатом", toppings: [.tomatoes], price: 1300),
            Pizza(pizzaType: .carbonara, crustType: "Карбонара с кетчупом и сыром", toppings: [.ketchup, .cheese], price: 590.90)
        ]
    }

    func addPizza(_ pizza: Pizza) {
        availablePizzas.append(pizza)
    }

    func getAllPizzas() -> [Pizza] {
        return availablePizzas
    }

    func addEmployee(_ employee: Employee) { // Добавление нового работника в массив
        employees.append(employee)
    }

    func getAllEmployees() -> [Employee] { // Получение всех работников
        return employees
    }
}

let pizzaShop = PizzaShop()

let margheritaNew = Pizza(pizzaType: .margherita, crustType: "Маргарита Древняя", toppings: [.tomatoes, .cheese], price: 690.90)
let pepperoniNew = Pizza(pizzaType: .pepperoni, crustType: "Пепирони Греческая", toppings: [.ketchup, .cheese], price: 590.90)

pizzaShop.addPizza(margheritaNew)
pizzaShop.addPizza(pepperoniNew)

let cashier1 = Employee(name: "Иван", salary: 1000, position: .cashier)
let cook1 = Employee(name: "Анна", salary: 1200, position: .cook)

pizzaShop.addEmployee(cashier1)
pizzaShop.addEmployee(cook1)

print("Все доступные пиццы:")
for pizza in pizzaShop.getAllPizzas() {
    print("Тип: \(pizza.pizzaType), Цена: \(pizza.price) рублей")
}

print("\nВсе работники:")
for employee in pizzaShop.getAllEmployees() {
    print("Имя: \(employee.name), Зарплата: \(employee.salary) рублей, Должность: \(employee.position)")
}

// Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, 
// которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, 
// если места хватает и false, если места не хватает. 
// Изначальное количество мест задается в инициализаторе

class Table {
    let numberOfSeats: Int

    init(numberOfSeats: Int) {
        self.numberOfSeats = numberOfSeats
    }

    func numberQuests(_ guestsCount: Int) -> Bool {
        return guestsCount <= numberOfSeats
    }
}

