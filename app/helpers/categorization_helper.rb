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
    case controller.controller_name
      when "accounts"
          catmodel = "CategoryAccount"
      when "contacts"
          catmodel = "CategoryContact"
    end

    catmodel.constantize.find(:all)
  end
  
  def get_category_model_ids()
    case controller.controller_name
      when "accounts"
          ref = "category_account_ids"
      when "contacts"
          ref = "category_contact_ids"
    end
    #'category_account_ids'
    ref    
  end
  
  def get_category_instance_variable()
    case controller.controller_name
      when "accounts"
          ins = "@account.category_accounts"
      when "contacts"
          ins = "@contact.category_contacts"
    end
    ins
    #@account.category_accounts
    #instance_variable_get(get_category_instance_variable).send) 
  end
  
  def get_category_model()
    case controller.controller_name
      when "accounts"
          model = "account"
      when "contacts"
          model = "contact"
    end
    model
  end

end
