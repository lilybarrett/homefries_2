class CreateDiners < ActiveRecord::Migration
  def change
    create_table :diners do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :description
    end
  end
end
