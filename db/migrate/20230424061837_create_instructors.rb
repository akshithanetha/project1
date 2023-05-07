class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :no_of_courses
      t.string :category

      t.timestamps
    end
  end
end
