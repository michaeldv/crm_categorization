module ContactCategoryAssociations
  
  def self.included(base)
    base.class_eval do
      has_many :contact_categories, :dependent => :destroy    
      has_many :category_contacts, :through => :contact_categories, :uniq => true      
    end
  end

end
