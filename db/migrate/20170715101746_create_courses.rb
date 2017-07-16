class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :syllabus
      t.integer :constructor_id
      t.timestamps
    end
  end
end
