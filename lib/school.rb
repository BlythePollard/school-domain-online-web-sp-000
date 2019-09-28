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
  
  def sort
     roster.values.sort!
     return roster
     
  end
end


