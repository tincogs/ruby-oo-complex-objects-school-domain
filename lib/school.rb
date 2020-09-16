class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(number)
        @roster[number]
    end

    def sort
        sorted = {}
        @roster.each do |number, students|
            sorted[number] = students.sort
        end
        sorted
    end
end