class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.belongs_to :contact1, index:true
      t.belongs_to :contact2, index: true
      t.timestamps
    end
  end
end
