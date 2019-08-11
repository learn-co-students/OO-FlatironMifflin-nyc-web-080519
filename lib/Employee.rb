class Employee
    attr_reader :name
    attr_accessor :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self
    end

    def tax_bracket
        Employee.all.select do |employee|
            self.salary - employee.salary >= -1000 && self.salary - employee.salary <= 1000
        end
    end

    def self.paid_over(amount)
        all.select do |employee|
            employee.salary > amount
        end
    end

    def self.find_by_department(department)
        Manager.all.select do |manager|
            manager.department == department
        end[0].employees[0]
    end

    def self.all
        @@all
    end
end
