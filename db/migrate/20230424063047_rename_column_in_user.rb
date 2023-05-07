class RenameColumnInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :Name_of_the_User
  end
end
