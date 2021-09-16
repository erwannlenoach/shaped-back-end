class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.belongs_to :user, index:true
      t.timestamps
    end
  end
end
