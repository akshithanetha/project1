class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :emailId, :string
  end
end
