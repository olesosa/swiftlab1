# swiftlab1

Створити у Playground код для базового “калькулятора”.
Створюються 3 змінні, 1 - типу String? для вказання математичної
операції (можливі дії - “+”, “-”, ”*”, ”/”) та 2 типу Int? для задання елементів
математичної операції. Значення змінних не потрібно вводити з клавіатури,
Ви задаєте їх власноруч перед запуском Playground-проекту просто
присвоївши змінним якісь значення. Далі створити 4 функції для базових
математичних операцій. Наступний крок - на основі змінної, в якій
зберігається знак математичної операції з використанням оператора
“switch” обчислити результат дії та вивести його за допомогою оператора
”print”.

let s: String? = "/"
let a:Int? = 205
let b:Int? = 36

func add(_ num1:Int, _ num2:Int){
    print(num1+num2)
}

func subt(_ num1:Int, _ num2:Int){
    print(num1-num2)
}

func multiply(_ num1:Int, _ num2:Int){
    print(num1*num2)
}

func div(_ num1:Int,  _ num2:Int){
    if b != 0{
        print(num1/num2)
    }
}

if let s = s, let a = a, let b = b{
    switch s{
        case "+":
        add(a, b)
        case "-":
        subt(a, b)
        case "*":
        multiply(a, b)
        case "/":
        div(a, b)
        default:
        print("error")
    }
}
