class CreateAccountCategories < ActiveRecord::Migration
  def self.up
    create_table :account_categories, :force => true do |t|
      t.integer :account_id
      t.integer :category_account_id
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :account_categories, [:account_id, :category_account_id]
    add_index :account_categories, :category_account_id    
  end

  def self.down
    drop_table :account_categories
  end
end
