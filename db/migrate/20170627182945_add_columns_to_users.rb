class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :hometown, :string
    add_column :users, :username, :string
  end
end
