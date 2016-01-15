class AddUsersToDiners < ActiveRecord::Migration
  def change
    add_column :diners, :user_id, :integer 
  end
end
