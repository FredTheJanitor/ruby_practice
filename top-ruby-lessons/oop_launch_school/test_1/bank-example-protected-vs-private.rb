class BankAccount
  attr_reader :name

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  #public method
  def richer_than?(other_account)
    #this works because @balance is PROTECTED
    self.balance > other_account.balance
  end

  protected

  def balance
    @balance
  end
end

user1 = BankAccount.new("Alice", 100)
user2 = BankAccount.new("Bob", 50)

puts user1.richer_than(user2)   # works
# puts user1.balance            # Error! (protected method)