// 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить 
// на вклад, следующий аргумент это годовой процент, третий аргумент это срок 
// Функция возвращает сколько денег получит пользователь по итогу

let Amount = 1000.0
let annualInterest = 5.0
let years = 3


func calculater(Amount: Double, annualInterest: Double, years: Int) -> Double {
    let interestRate = annualInterest / 100.0
    var compoundedAmount = Amount
    
    for _ in 1...years {
        compoundedAmount *= (1 + interestRate)
    }
    
    return compoundedAmount
}
let finalAmount = calculater(Amount: Amount, annualInterest: annualInterest, years: years)
print("Итоговая сумма на вкладе через \(years) года(лет): \(finalAmount)")

//2. Создать перечисление, которое содержит 3 вида пиццы и создать переменные с каждым видом пиццы
enum Pizza: String {
    case margherita = "Маргарита"
    case pepperoni = "Пиперони"
    case fourСheeses = "Четыре сыра"
}
let margheritaPizza: Pizza = .margherita
let pepperoniPizza: Pizza = .pepperoni
let hawaiianPizza: Pizza = .fourСheeses

print("Моя любимая пицца: \(margheritaPizza)")
print("Любимая Андрея: \(pepperoniPizza)")
print("Пицца с сыром: \(hawaiianPizza)")

// 3. Добавить возможность получения названия пиццы через rawValue
func getName(pizza: Pizza) -> String {
    pizza.rawValue
}

print(getName(pizza: .margherita))
print(getName(pizza: .pepperoni))
print(getName(pizza: .fourСheeses))
