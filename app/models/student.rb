class Student < ActiveRecord::Base
  
  has_many :courses
  
  def combined_info
    "name: #{full_name} /n"+
    "age: #{age} /n"+
    "bio: #{bio} /n"
  end
    
  def age_in_60_years
    age + 60.years
  end
  
end

