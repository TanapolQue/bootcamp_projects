# ATM class (at least 5 methods)

# create ATM class
class ATM():
    def __init__(self, name: str, password: str, balance: int):
        self.name = name 
        self.password = password
        self.balance = balance

    def check_balance(self):
        print(f"Account: {self.name}, Balance: {self.balance} THB")
    
    def deposit(self, money: int) -> None:
        self.balance += money
        print(f"Deposite Money: {money} THB")
        print(f"Account: {self.name}, New Balance: {self.balance} THB")
        print("Deposite Successfully!")

    def withdraw(self, money: int) -> None:
        self.balance -= money
        print(f"Withdraw Money: {money} THB")
        print(f"Account: {self.name}, New Balance: {self.balance} THB")
        print("Withdraw Successfully!")

    def change_name(self, new_name):
        self.name = new_name
        print(f"New Account Name: {self.name}")

    def change_password(self, new_password):
        self.password = new_password
        print(f"Your New Password: {new_password}")

    def wire_money(self, wire_money: int, account_dest: str) -> None:
        print(f"You want to wire money: {wire_money} THB, to Account: {account_dest}")
        con = int(input("Are you centain to wire money (1.Yes 2.No) ?"))
        if con == 1:
            self.balance -= wire_money
            print()
            print(f"You Wire Money: {wire_money} THB to Account: {account_dest}")
            print(f"New Balance: {self.balance}")
            print("Wire Money Successfully!")
        else:
            print()
            print("Thank You for serving!!")
        
        

