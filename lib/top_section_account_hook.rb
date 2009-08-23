class TopSectionAccountHook < FatFreeCRM::Callback::Base

  # Gets called as hook(:top_section_account_bottom, self) from views/accounts/_top_section.html.haml
  #----------------------------------------------------------------------------
  def top_section_account_bottom(view, context = {})
    view.controller.send(:render_to_string, :partial => "categories/select_categories")
  end

end