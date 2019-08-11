class Manager
    attr_reader :name
    attr_accessor :department, :age, :employees

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def hire_employee(name, salary)
        self.employees << Employee.new(name, salary, self.name)
    end

    def self.all_departments
        all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        sum = 0
        all.each do |manager|
            sum += manager.age
        end
        sum / all.count
    end

    def self.all
        @@all
    end
end
