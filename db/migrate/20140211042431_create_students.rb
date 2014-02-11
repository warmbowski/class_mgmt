class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :full_name
      t.integer :age
      t.text :bio
      t.string :title
      t.string :company
      t.string :favorite_ice_cream
      t.string :gender

      t.timestamps
    end
  end
end
