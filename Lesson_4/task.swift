
//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum PizzaType {
    case margherita
    case pepperoni
    case vegetaria
    case forcheeses
    case carbonara
}

//2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
// Перечисление для добавок

enum Topping {
    case ketchup
    case tomatoes
    case cheese
}

struct Pizza {
    let pizzaType: PizzaType
    let crustType: String // Толстое или тонкое тесто
    let toppings: [Topping] // Массив выбранных добавок
    let price: Double // Стоимость
}
    
//4. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class PizzaShop {
    private var availablePizzas: [Pizza]
    init() {
        availablePizzas = [
            Pizza(pizzaType:
                .margherita, crustType: "Маргарита с кетчупом и сыром", toppings: [.tomatoes, .cheese], price: 455.99),
            Pizza(pizzaType: .pepperoni, crustType: "Пепирони с кетчупом и сыром", toppings:
                    [.ketchup, .cheese], price: 789),
            Pizza(pizzaType: .vegetaria, crustType: "Вигитаринская пицца с кетчупом и сыром", toppings:
                    [.tomatoes, .cheese], price: 657),
            Pizza(pizzaType: .forcheeses, crustType: "Четыре Сыра с томатом",           toppings: [.tomatoes], price: 1300),
            Pizza(pizzaType: .carbonara, crustType: "Карбонара с кетчупом и сыром",     toppings:
                    [.ketchup, .cheese], price: 590.90)
        ]
    }
    //3. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц
    
    func addPizza(pizza: Pizza) {
        availablePizzas.append(pizza)
    }
    
    func getAllPizzas() -> [Pizza] {
        return availablePizzas
    }
}

// 5.Создать экземпляр класса пиццерии и добавить в него несколько пицц
let pizzaShop = PizzaShop()

let margheritaNew = Pizza(pizzaType: .margherita, crustType: "Маргарита Древняя", toppings: [.tomatoes, .cheese], price: 690.90)
let pepperoniNew = Pizza(pizzaType: .pepperoni, crustType: "Пепирони Греческая", toppings: [.ketchup, .cheese], price: 590.90)

pizzaShop.addPizza(pizza: margheritaNew)
pizzaShop.addPizza(pizza: pepperoniNew)





