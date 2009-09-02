class CreateContactCategories < ActiveRecord::Migration
  def self.up
    create_table :contact_categories, :force => true do |t|
      t.integer :contact_id
      t.integer :category_contact_id
      t.datetime :deleted_at
      t.timestamps
    end
    add_index :contact_categories, [:contact_id, :category_contact_id]
    add_index :contact_categories, :category_contact_id    
  end

  def self.down
    drop_table :contact_categories
  end
end
