class AddColumnToAdmin < ActiveRecord::Migration[7.0]
  def change
    add_reference :admins, :manageable, polymorphic: true
  end
end
