class Manager
    attr_reader :name
    attr_accessor :age, :department
    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select do |employee|
            employee.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        self.all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        age_sum = self.all.sum do |manager|
            manager.age
        end
        age_sum.to_f / self.all.count
    end

end
