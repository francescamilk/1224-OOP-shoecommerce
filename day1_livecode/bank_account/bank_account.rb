# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class
  # - you can access full owner's name and balance, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account info
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the balance variable)

  MIN_DEPOSIT = 100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit >= MIN_DEPOSIT

    @password     = password
    @transactions = []
    @balance      = 0
    @name         = name
    @iban         = iban

    add_transaction(initial_deposit)
  end

  attr_reader :name, :balance

  def withdraw(amount)
    add_transaction(-amount)
    "You have withdrawn #{amount}"
  end

  def deposit(amount)
    add_transaction(amount)
    "You have deposited #{amount}"
  end

  def transactions_history(args = {})
    password = args[:password]
    if password.nil?
      "Please provide a password..."
    elsif password != @password
      "Sorry, wrong password."
    else
      @transactions.join(', ')
    end
  end

  def iban
    pattern = /(-\d{4}){4}-\w{4}-/
    return @iban.gsub(pattern, "**************")
  end

  def to_s
    "#{@name} - #{iban()} - #{@balance}"
  end

  private

  def add_transaction(amount)
    @transactions << amount
    @balance += amount
  end
end
