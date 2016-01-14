class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :body, null: false
      t.belongs_to :diner, null: false

      t.timestamps null: false
    end
  end
end
