require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

#    CREATE MANAGERS
michael = Manager.new("Michael Scott", "Sales", 52)
bill = Manager.new("Bill Safford", "PEN", 45)
nick = Manager.new("Nick Ryan", "Sys Admin", 34)
melly = Manager.new("Momma Mel", "Home Economy", 38)

#     CREATE EMPLOYEES
tom = Employee.new("Tom McNamee", "Home Economy", melly, 2000)
dustin = Employee.new("Dustin NCR", "Sys Admin", nick, 1500)
frank = Employee.new("Frank NCR", "Sys Admin", nick, 1750)
jim = Employee.new("Jim Haplert", "Sales", michael, 2500)
dwight = Employee.new("Dwight K Schrute", "Sales", michael, 2500)
adam = Employee.new("Adam Stanza", "Sales", michael, 2500)
dave = Employee.new("David Lazar", "PEN", bill, 1000)
brian = Employee.new("Brian Beck", "PEN", bill, 1000)


binding.pry
puts "done"
