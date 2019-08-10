require 'pry'

class Manager

  @@all = [] #array of all the Manager instances

  attr_accessor :department, :employees
  attr_reader :name, :age


  def initialize(name, department, age)
    @name = name 
    @department = department 
    @age = age
    @employees = [] #array of all the employees that the manager oversees
    @@all << self 
  end

  def self.all
    @@all 
  end

  def hire_employee(name, salary)
    @employees << Employee.new(name, salary, self) #creates a new employee with the name we pulled in, salary, and ourselves (manager)
  end 

  def self.all_departments 
    all_departments = []
    Manager.all.each do |manager| 
    all_departments << manager.department
    end
  end

  def self.average_age 
    #traverse through the @@all array of manager instances 
    #take the ages of all the managers and average it
    #convert age to a float 
    age_arr = Manager.all.map do |manager|
      manager.age 
    end
    age_arr.inject{|sum,el| sum + el}.to_f / age_arr.size 
  end



end #end of class Manager
