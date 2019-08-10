require_relative "lib/Manager.rb"
require_relative "lib/Employee.rb"
require 'pry'

#Making new Manger
kunxi_manager = Manager.new("Kunxi", "Sales", 22)
xiaoling_manager = Manager.new("Xiaoling", "Makeup", 47)
chris_manager = Manager.new("Chris", "Human Resources", 55)
david_manager = Manager.new("David", "Marketing", 60)

#Making new Employee
xiaoyu_employee = Employee.new("Xiaoyu", 3000, kunxi_manager)
guagua_employee = Employee.new("GuaGua", 10, kunxi_manager)
jake_employee = Employee.new("Jake", 4000, xiaoling_manager)
jason_employee = Employee.new("Jason", 2000, kunxi_manager)
will_employee = Employee.new("Will", 5000, kunxi_manager)

#Hire new employee
# kunxi_manager.hire_employee("Robert", 40)



binding.pry
puts "done"
