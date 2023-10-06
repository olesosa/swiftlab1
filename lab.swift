enum MyError : Error{
  case runtimeError(string)
}

let s: String? = "/" let a:Int? = 205 let b:Int? = 36

func add(_ num1:Int, _ num2:Int)->Int{ return num1+num2 }

func subt(_ num1:Int, _ num2:Int)->Int{ return num1-num2 }

func multiply(_ num1:Int, _ num2:Int)->Int{ return num1*num2 }

func div(_ num1:Int, _ num2:Int)->Int throws{ if b != 0 { return num1/num2 } else {throw MyError("error")} return 0}

if let s = s, let a = a, let b = b {
switch s 
  { case "+": 
   let result = add(a, b) 
   print(result) 
   case "-": 
   let result = subt(a, b) 
   print(result) case "*": 
   let result = multiply(a, b) 
   print(result) case "/": do{
     try let result = try div(a, b) 
   print(result)    
   } catch MyError.runtimeError(let msg) { print(msg) }
   default: print("error") 
  } 
}
