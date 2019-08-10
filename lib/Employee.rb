#An Employee can only work in one department
#One Manger looking over many Employees

class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end 

    def manager_name
        self.manager.name
    end

    def self.all
        @@all 
    end

    #Takes an amount argument
    #Returns an Array of all employees whose salary are over that amt
    def self.paid_over(amt)
        self.all.select {|employee| employee.salary > amt}
    end

    #Takes in the name of the department as an argument
    #Returns the first employee whose manager is working in that department
    #The first employee ===> Use the find method
    def self.find_by_department(department_name)
        self.all.find {|employee| employee.manager.department == department_name}
    end

    #Returns an Array of all the employees whose salaries 
    #are plus or minus 1000 of the salary of the employee who invoked the method
    def tax_bracket
        Employee.all.select do |employee|
            if employee.salary >= self.salary-1000 && employee.salary <= self.salary+1000
                employee.salary
            end
        end
    end

end #end of Employee class


