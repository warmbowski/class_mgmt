class AddAnotherStudentIdToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :another_student_id, :integer
  end
end
