module AccountCategoryAssociations
  
  def self.included(base)
    base.class_eval do
      has_many :account_categories, :dependent => :destroy
      has_many :categories, :through => :account_categories, :uniq => true
    end
  end

end
