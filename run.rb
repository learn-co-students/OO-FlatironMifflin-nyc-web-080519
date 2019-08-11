require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bill = Manager.new("Bill", "Accounts", 69)
brenda = Manager.new("Brenda", "HR", 45)
belinda = Manager.new("Belinda", "Accounting", 35)
larry = Manager.new("Larry", "Admissions", 56)
lisa = Manager.new("Lisa", "Marketing", 99)

tracie = lisa.hire_employee("Tracie", 70000)
kim = lisa.hire_employee("Kim", 75000)
ingrid = lisa.hire_employee("Ingrid", 100000)
meagan = larry.hire_employee("Meagan", 69000)



binding.pry
puts "done"
