class AddCharacterNoToUser < ActiveRecord::Migration
  def change
    add_column :users, :character_no, :integer
  end
end
