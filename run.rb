require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("Shane", "Biz Ops", 32)
m1 = Manager.new("Sandra", "HR", 22)
m1 = Manager.new("Felix", "Engineering", 51)

e1 = Employee.new("Suzie", 5500, "Derek")
e2 = Employee.new("Pishi", 5000, "Shane")
e3 = Employee.new("Belinda", 600000, "No one")


binding.pry
puts "done"




