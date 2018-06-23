class UserId < ActiveRecord::Migration
  def change
    add_reference :orders, :user
    create_table :reviews do |t|
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :description
      t.integer :rating
      t.timestamps null: false
    end
  end
end