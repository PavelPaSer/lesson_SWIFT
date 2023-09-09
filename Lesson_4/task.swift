
//1. Создать перечисление с видами пиццы (хотя бы 4 - 5 кейсов)

enum pizzaType {
    case margherita
    case pepperoni
    case vegetaria
    case forcheeses
    case carbonara
}

//2. Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
// Перечисление для добавок

enum topping {
    case ketchup
    case tomatoes
    case cheese
}

struct pizza {
    let pizzaType: pizzaType
    let crustType: String // Толстое или тонкое тесто
    let toppings: [topping] // Массив выбранных добавок
    let price: Double // Стоимость
}
    
//4. Создать класс пиццерии, добавить массив с возможными пиццами. Переменная с массивом должна быть приватной. Массив задается в инициализаторе.
class pizzaShop {
    private var availablePizzas: [pizza]
    init() {
        availablePizzas = [
            pizza(pizzaType:
                .margherita, crustType: "Маргарита с кетчупом и сыром", toppings: [.tomatoes, .cheese], price: 455.99),
            pizza(pizzaType: .pepperoni, crustType: "Пепирони с кетчупом и сыром", toppings:
                    [.ketchup, .cheese], price: 789),
            pizza(pizzaType: .vegetaria, crustType: "Вигитаринская пицца с кетчупом и сыром", toppings:
                    [.tomatoes, .cheese], price: 657),
            pizza(pizzaType: .forcheeses, crustType: "Четыре Сыра с томатом",           toppings: [.tomatoes], price: 1300),
            pizza(pizzaType: .carbonara, crustType: "Карбонара с кетчупом и сыром",     toppings:
                    [.ketchup, .cheese], price: 590.90)
        ]
    }
    //3. Написать в классе пиццерии функции для добавления новой пиццы и для получения всех доступных пицц
    
    func addPizza(pizza: pizza) {
        availablePizzas.append(pizza)
    }
    
    func getAllPizzas() -> [pizza] {
        return availablePizzas
    }
}

// 5.Создать экземпляр класса пиццерии и добавить в него несколько пицц
let pizzaShopp = pizzaShop()

let margheritaNew = pizza(pizzaType: .margherita, crustType: "Маргарита Древняя", toppings: [.tomatoes, .cheese], price: 690.90)
let pepperoniNew = pizza(pizzaType: .pepperoni, crustType: "Пепирони Греческая", toppings: [.ketchup, .cheese], price: 590.90)

pizzaShopp.addPizza(pizza: margheritaNew)
pizzaShopp.addPizza(pizza: pepperoniNew)





