class AddColumnTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type_users, :boolean
  end
end
