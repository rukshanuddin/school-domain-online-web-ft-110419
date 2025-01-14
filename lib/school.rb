require "pry"

class School

  attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster ={}
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.map do |grade, students|
      roster[grade] = students.sort



    end
    roster
  end

end
