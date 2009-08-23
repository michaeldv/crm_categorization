module CategorizationHelper

  #----------------------------------------------------------------------------
  def show_categories(categories)
    output = ""
    categories.each do |cat|      
      output += cat.long_name + "<br />"
    end
    
    output
  end
  
  def all_categories()
    Category.find(:all, :order => "name")
  end

end
