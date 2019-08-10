#Manger overees only one department
#Manger oversees many Employees

class Manager
    attr_accessor :name, :department, :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    #Takes in a String and an Integer argument
    #Takes in the employee's name and salary
    #Adds that employee to the list the manager oversees
    def hire_employee(employee_name, employee_salary)
        Employee.new(employee_name, employee_salary, self)
    end

    #Returns an Array of all departments name that every manager oversees
    #One department to one manager (one to one relationship)
    def self.all_departments
       self.all.collect {|manager| manager.department} 
    end

    #returns a Float of the average age of all managers
    def self.average_age
        total = 0.0
        self.all.each {|manager| total += manager.age}
        total / @@all.count
    end

end
