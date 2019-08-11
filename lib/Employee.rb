class Employee

  attr_accessor :name, :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end
  
  # returns an Array of all the employees
  def self.all
    @@all
  end

  
  # takes a String argument that is the name of a department and returns 
  # the first employee whose manager is working in that department
  def self.find_by_department(department)
    self.all.find do |employee|
      employee.manager.department == department
    end
  end

  # takes a Fixnum argument and returns an Array of all the employees 
  # whose salaries are over that amount
  def self.paid_over(num)
    self.all.select do |employee|
      employee.salary > num
    end
  end

  # returns a String that is the name of their manager
  def manager_name
    self.manager.name
  end

  # returns an Array of all the employees whose salaries are within $1000 
  # (± 1000) of the employee who invoked the method
  def tax_bracket
    tax_bracket_buds = []
    self.class.all.each do |employee|
      tax_bracket_buds << employee if employee.salary <= (self.salary + 1000) && employee.salary >= (self.salary - 1000)
    end
    tax_bracket_buds
  end


end #ends Employee class

