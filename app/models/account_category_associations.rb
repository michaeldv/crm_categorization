module AccountCategoryAssociations
  
  def self.included(base)
    base.class_eval do
      has_many :account_categories, :dependent => :destroy    
      has_many :category_accounts, :through => :account_categories, :uniq => true
    end
  end

end
