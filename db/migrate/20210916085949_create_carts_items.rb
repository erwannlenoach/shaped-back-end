class CreateCartsItems < ActiveRecord::Migration[6.1]
  def change
    create_table :carts_items do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :item, index: true
      t.integer :quantity, null: false, default: 1
      t.timestamps
    end
  end
end
