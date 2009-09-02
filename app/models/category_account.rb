class CategoryAccount < Category
  has_many :accounts, :through => :account_categories
  has_many :account_categories
  
  acts_as_nested_set
end
