class CategoryContact < Category
  has_many :contacts, :through => :contact_categories
  has_many :contact_categories
  
  acts_as_nested_set  
end
