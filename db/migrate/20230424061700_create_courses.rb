class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :Name
      t.string :Category
      t.string :Duration

      t.timestamps
    end
  end
end
