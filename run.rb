require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


m1 = Manager.new("Dwight", "Sales", 38)
m2 = Manager.new("Darrell", "Warehouse", 32)
m3 = Manager.new("Francis", "HR", 55)

m1.hire_employee("Jim", 67001)
m2.hire_employee("Pam", 68000)
m1.hire_employee("Creed", 90000)



binding.pry
puts "done"
