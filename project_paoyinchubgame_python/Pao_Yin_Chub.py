# Game Pao Yin Chob

# import random to randomize computer weapons 
import random

# Intro Game
print("Welcome to the Pao Yin Chob Game")
print()
print("Note: You can play infinitely . If you want to stop, you can write 'q'")

point ={
    "win": 0,
    "lose": 0,
    "draw": 0
}

## looping of duel!

while True:
    my_choice = input("Select your tools (rock, paper, scissor): ")
    list_hand = ['rock', 'paper', 'scissor']
    comp_choice = random.sample(list_hand, k=1)
        
    if my_choice == 'q':
        break

    else:
    # rock 
        if my_choice == 'rock':
            if comp_choice[0] == 'rock':
                print("You draw!")
                point['draw'] += 1
            elif comp_choice[0] == 'paper':
                print("You lose!")
                point['lose'] += 1
            else:
                print("You win!")
                point['win'] += 1
    # paper
        elif my_choice == 'paper':
            if comp_choice[0] == 'paper':
                print("You draw!")
                point['draw'] += 1
            elif comp_choice[0] == 'rock':
                print("You win!")
                point['win'] += 1
            else:
                print("You lose!")
                point['lose'] += 1
    # scissor
        elif my_choice == 'scissor':
            if comp_choice[0] == 'scissor':
                print("You draw!")
                point['draw'] += 1
            elif comp_choice[0] == 'rock':
                print("You lose!")
                point['lose'] += 1
            else:
                print("You win!")
                point['win'] += 1
        else: 
            print("Error! Try Again")
           
            
# Finist! Conclude Score of Duel Pao Yin Chub Game!
print()
print()
print(f"Your score: Win = {point['win']}, Draw = {point['draw']}, Lose = {point['lose']}")
print("Thank you so much to play our game!")
