class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :emailId
      t.string :phone
      t.string :password
      t.references :user,
                   null: false,
                   foreign_key: true,
                   index: {
                     unique: true
                   }

      t.timestamps
    end
  end
end
