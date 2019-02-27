class School 
  attr_reader :name
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end 
  end 
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort
    end
  end
end
