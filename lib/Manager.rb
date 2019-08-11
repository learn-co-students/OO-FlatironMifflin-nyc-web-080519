class Manager
@@all_managers =[]
attr_reader :name, :department, :age

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @managing =[]
    end

    def employees
        @managing
    end

    def self.all 
        @@all_managers
    end

    def hire_employee(name, salary)
        @managing <<  Employee.new(name, salary, self)
    end

    #_______________NEED TO CHECK THIS ONE ____________________
    def all_departments
        @@all_managers.each do |manager|
            manager.department
        end
    end
    #_______________NEED TO CHECK THIS ONE ____________________

    def average_age
        total_age = 0
        @@all.each do |manager|
             total_age += manager.age
        end
        (total_age/ (@@all.length -1))
    end
end
