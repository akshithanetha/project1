class AddReferencesToCourses < ActiveRecord::Migration[7.0]
  def change
    add_reference :courses, :user

    create_table :courses do |t|
      t.belongs_to :user
    end
  end
end
