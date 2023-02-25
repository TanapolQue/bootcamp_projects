# homework 02
# chatbot (PaoYingChub)


#Intro the game
print("Welcome to Pao Ying Chub Game!")
print("You can play until you are satisfied.")
print("quit the game print 'q'")
counts_win <- 0
counts_draw <- 0
counts_lose <- 0

#Lope for typing of option 
condition <- 1
while (condition > 0){
  
#User choose the options
print("What you choose (rock, paper, scissors)?")
user_opt <- readLines(con = "stdin", n=1)
  
#Computor choose the options
options <- c("rock", "paper", "scissors")
com_opt <- sample(options,1)

#Lope of playing, can press 'q' to quite the game.
if (user_opt != "q") {
#Battle
  if (user_opt == "rock") {
    if (com_opt == "rock") {
    #draw 
    counts_draw <- counts_draw + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Draw!!")
  }
    if (com_opt == "paper") {
    #lose
    counts_lose <- counts_lose + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Lose!!")
  }
    if (com_opt == "scissors") {
    #win
    counts_win <- counts_win + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Win!!")
  }
} 
  if (user_opt == "paper") {
    if (com_opt == "paper") {
    #draw 
    counts_draw <- counts_draw + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Draw!!")
  }
    if (com_opt == "scissors") {
    #lose
    counts_lose <- counts_lose + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Lose!!")
  }
    if (com_opt == "rock") {
    #win
    counts_win <- counts_win + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Win!!")
  }
}
  if (user_opt == "scissors") {
    if (com_opt == "scissors") {
    #draw 
    counts_draw <- counts_draw + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Draw!!")
  }
    if (com_opt == "rock") {
    #lose
    counts_lose <- counts_lose + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Lose!!")
  }
    if (com_opt == "paper") {
    #win
    counts_win <- counts_win + 1
    print(paste("You:", user_opt, "Vs", com_opt))
    print("You Win!!")
  }
}
} else {
  print("You score is.....")
  print(paste("Win =",counts_win))
  print(paste("Lose =", counts_lose))
  print(paste("Draw =", counts_draw))
  print("Nice a Game!")
  print("Thank you to play Pao Ying Chub Game! eiei")
  break
}
}

  





