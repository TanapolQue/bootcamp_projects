# chatbot (rule-based)
# ordering pizza

print("Welcome to our Pizza Hub App!")
print("Hello There!")

#Q1
print("What's your name?")

user_name <- readLines(con = "stdin", n=1)
print(paste("Hi!", user_name))

#Q2
print("How may I help you?")
print("1. Order Pizza 2. Promotions Today")

action <- readLines(con = "stdin", n=1)

if (action == "2") {
  print("The promotion today is pizza hawaiian size Medium get 1-by-1")
  #Q3
  print("Are you interested?")
  print(" 1. Yes 2. No, return to order pizza ")
  
  pro_pizza <- readLines(con="stdin", n=1)
    if (pro_pizza == "1") {
      pizza_order <- "hawaiin get 1-by-1 "   
      pizza_size <- "medium"
}     else {
      action <- "1"
}
} 
    
if (action == "1") {
  #Q4
  print("What kind of pizza do you like?")
  print("1. Peperoni 2. Hawaiian 3. Cheese")
  
  pizza_order <- readLines(con = "stdin", n=1)
  if (pizza_order == "1") {
    pizza_order <- "Peperoni"
  } else if (pizza_order == "2") {
    pizza_order <- "Hawaiian"
  } else if (pizza_order == "3") {
    pizza_order <- "Cheese"
  }
  
  #Q5
  print("What's size please?")
  print("1. Small 2. Medium 3. Large")
  
  pizza_size <- readLines("stdin", n=1)
  if (pizza_size == "1") {
    pizza_size <- "small"
  } else if (pizza_size == "2") {
    pizza_size <- "medium"
  } else if (pizza_size == "3") {
    pizza_size <- "large"
  } 
}

  #Q6 
  print("What wolud you like to drink?")
  print("1. Cola 2. Lemon soda 3. Beer")

  drink_order <- readLines(con = "stdin", n=1)
  if (drink_order == "1"){
    drink_order <- "Cola"
  } else if (drink_order == "2"){
    drink_order <- "Lemon soda"
  } else if (drink_order == "3"){
    drink_order <- "Beer"
    }
    
  #Q7
  print("How'd you like to pay?")
  print(" 1. Cash 2. Credit cart ")

  payment <- readLines(con = "stdin", n=1)
  if (payment == "1"){
    payment <- "Cash"
  } else {
    payment <- "Credit card"
  }

#Q8
print("Where's address you'd like to deliver?")
location <- readLines(con ="stdin", n=1)

#Summery
print(paste("I would like to repeat your order. Your orders are pizza", pizza_order, "size" , pizza_size , "and" , drink_order)) 
print(paste("You'd like to pay by" , payment , "and deliver at" , location))
print("Your order will have drivered last on more than 30-45 minutes.")
print(paste("Thank you",user_name)) 
print("Hope you enjoy with meal, please come back to Pizza Hub again.")    
