class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :student_id
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :location
      t.string :semester
      t.string :course_id

      t.timestamps
    end
  end
end
