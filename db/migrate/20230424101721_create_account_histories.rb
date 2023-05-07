class CreateAccountHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :account_histories do |t|
      t.references :account, null: false, foreign_key: true
      t.string :subscription

      t.timestamps
    end
  end
end
