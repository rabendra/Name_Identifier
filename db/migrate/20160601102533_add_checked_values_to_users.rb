class AddCheckedValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :checked_values, :text
  end
end
