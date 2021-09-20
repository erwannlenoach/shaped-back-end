class AddjwttoUser < ActiveRecord::Migration[6.1]
  def change
   
    # If you already have user records, you will need to initialize its `jti` column before setting it to not nullable. Your migration will look this way:
    add_column :users, :jti, :string, null: false
    add_index :users, :jti, unique: true
  end
end
