class Employee
    @@all_employees = []
    attr_reader :name, :salary, :manager_name

    def initialize(name, salary, manager_name)
        @name = name
        @department = department
        @age = age
    end

    def self.all
        @@all_employees
    end

    def paid_over(salary_number)
        @@all_employees.select do |employee|
            employee.salary > salary_number
        end
    end

    def find_by_department(department_name)
        @@all_employees.first do |employee|
            employee.manager_name.department == department_name
        end
    end

    def tax_bracket(self)
        @@all_employees.select do |employee|
            employee.salary - self.salary <= 1000|| self.salary - employee.salary <= 1000
        end
    end
end
