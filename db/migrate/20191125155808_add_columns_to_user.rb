class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :type, :boolean
    add_column :users, :lesson_type, :string
    add_column :users, :adress, :string
  end
end
