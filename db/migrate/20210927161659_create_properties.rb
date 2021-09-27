class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
