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
     roster.each do |key, value|
       value.each do |name1, name2|
         
    # roster.sort_by { |key, value| value}.to_h
     #value.values.sort_by {|first, last| first}.to_h
    
  end
end


