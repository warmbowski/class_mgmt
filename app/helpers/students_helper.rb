module StudentsHelper
  def short_bio student
    truncate student.bio, length: 55
  end
  
end
