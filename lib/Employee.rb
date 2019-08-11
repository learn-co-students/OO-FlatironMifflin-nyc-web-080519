class Employee
    attr_reader :name
    attr_accessor :salary, :manager
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

    def self.paid_over(amount)
        self.all.select do |employee|
            employee.salary > amount
        end
    end

    def self.find_by_department(department)
        self.all.find do |employee|
            employee.manager.department == department
        end
    end

    def tax_bracket
        employees_in_tax_bracket = self.class.all.select do |employee|
            employee.salary >= (self.salary - 1000) && employee.salary <= (self.salary + 1000)
        end
        employees_in_tax_bracket.reject do |employee|
            employee == self
        end
    end
end
