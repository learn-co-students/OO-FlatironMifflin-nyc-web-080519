class Employee

  @@all = [] #array of all of the Employee instances

  attr_accessor :salary, :manager_name
  attr_reader :name 


  def initialize(name, salary, manager_name)
    @name = name 
    @salary = salary 
    @manager_name = manager_name
    @@all << self 
  end 

  def self.all 
    @@all
  end

  def self.paid_over(salary_amount)
    Employee.all.select do |employee|
      employee.salary > salary_amount 
    end 
  end

    #takes a String argument that is the name of a department and returns the first employee whose manager is working in that department

  def self.find_by_department(department_name)
    Manager.all.find do |manager|
      if manager.department == department_name
        manager.employees[0].name
      end
    end
  end


  #returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
  def tax_bracket
    Employee.all.select do |employee|
      binding.pry
      employee.salary <= self.salary + 1000 && employee.salary >= self.salary - 1000
    end 
  end


end #end of Employee class
