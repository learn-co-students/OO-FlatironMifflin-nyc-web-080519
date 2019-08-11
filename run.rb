require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

manager1 = Manager.new("Bob", 32, "HR")
manager2 = Manager.new("John", 29, "Accounting")
manager3 = Manager.new("Amy", 25, "Engineering")

employee1 = Employee.new("Steven", 50000, manager2)
employee2 = Employee.new("Dan", 30000, manager1)


binding.pry
puts "done"
