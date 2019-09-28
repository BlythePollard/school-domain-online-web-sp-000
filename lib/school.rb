class School
  attr_accessor :name, :roster, :grade
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster = @roster
    if roster.include?(grade)
     roster[grade] << name
    else roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    return roster[grade]
  end
  
  def sort(grade, name)
    roster.sort { |grade, name| grade[1]<=>name[1] }
end
end


