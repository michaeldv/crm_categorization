class ShowAccountHook < FatFreeCRM::Callback::Base

  # Gets called as hook(:show_account_bottom, self) from views/accounts/show.html.haml
  #-----------------------------------------------------------------------------------
  def show_account_bottom(view, context = {})
    view.controller.send(:render_to_string, :partial => "/admin/categories/show_categories")
  end
  
  def show_contact_bottom(view, context = {})
    view.controller.send(:render_to_string, :partial => "/admin/categories/show_categories")
  end

end
