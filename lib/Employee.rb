class Employee

  attr_accessor :name, :department, :manager, :salary

  @@all = []

  def initialize(name, department, manager, salary)
    @name = name
    @department = department
    @manager = manager
    @salary = salary
    @@all << self
  end  # ends initialize method

  def self.all
    @@all
  end  # ends self.all method

  def self.paid_over(sal)
    self.all.select { |emp| emp.salary > sal }
  end  # ends self.paid_over method

  def manager_name
    self.manager.name
  end  # ends manager_name method

  def tax_bracket
    Employee.all.select { |emp| (self.salary - 1000 .. self.salary + 1000).include?(emp.salary)}
  end  # ends tax_bracket method
  
  def self.find_by_department(dept)
    self.all.find { |emp| emp.manager.department == dept }
  end  # ends self.find_by_department method

end  # ends Employee class
