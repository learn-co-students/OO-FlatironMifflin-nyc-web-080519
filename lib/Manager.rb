class Manager

  attr_accessor :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  # returns an Array of all the managers
  def self.all
    @@all
  end

  # returns an Array of all the department names that every manager oversees
  def self.all_departments
    departments = []
    self.all.each do |manager|
      departments << manager.department
    end
    departments
  end

  # returns a Float that is the average age of all the managers
  def self.average_age 
    total_age = 0
    self.all.each do |manager|
      total_age += manager.age 
    end
    total_age / self.all.length.to_f
  end

  # returns an Array of all the employees that the manager oversees
  def employees
    Employee.all.select {|employee| employee.manager == self }
  end

  # takes a String argument and a Fixnum argument of an employee's name
  # and the employee's salary, respectively, and adds that employee to 
  # the list of employees that the manager oversees
  def hire_employee(name, salary)
    Employee.new(name, salary, self)
  end
  

end #end of Manager class





# Manager#name
# returns a String that is the manager's name
# Manager#department
# returns a String that is the department that the manager oversees
# Manager#age
# returns a Fixnum that is the age of the manager