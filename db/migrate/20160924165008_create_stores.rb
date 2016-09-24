class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.integer :address_id
      t.string :name

      t.timestamps null: false
    end
    add_index :stores, :address_id
  end
end
