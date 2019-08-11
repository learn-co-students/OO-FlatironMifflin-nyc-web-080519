class Manager

  attr_accessor :age, :department, :name


  @@all = []
  @@all_departments = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
    @@all_departments << department
  end  # ends initialize method

  def department
    @department
  end  # ends department method

  def age
    @age
  end  # ends age method

  def employees
    Employee.all.select{ |emp| emp.manager == self}
  end  # ends employees method

  def hire_employee(name, salary)
    Employee.new(name, self.department, self, salary)
  end  # ends hire_employee method

  def self.all
    @@all
  end  # ends self.all method

  def dept
    @dept
  end

  def self.all_departments
    @@all_departments.uniq
  end  # ends self.all_departments method

  def self.average_age
    average(self.all.collect { |mgr| mgr.age}).to_f
  end  # ends self.average_age method

  def self.average(arr) 
    sum = arr.sum.to_f
    len = arr.length.to_f
    sum / len
  end  # ends average method

end  # ends Manager class
