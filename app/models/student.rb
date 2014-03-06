class Student < ActiveRecord::Base
  
  #has_many :courses
  has_many :registrations
  has_many :courses, through: :registrations
  
  validates_presence_of :full_name, :email
  
  scope :pauls, -> do
    where(full_name: 'Paul Laskowski')
  end
  
  def self.sysadmins
    where(title: 'Sysadmin').pluck(:full_name)
  end
  
  def combined_info
    "name: #{full_name} /n"+
    "age: #{age} /n"+
    "bio: #{bio} /n"
  end
    
  def age_in_60_years
    age + 60.years
  end
  
end
