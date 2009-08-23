module TabsHelper

  def self.included(base)
    base.class_eval do
      alias_method_chain :tabs, :categories
    end
  end

  def tabs_with_categories
    tabs = tabs_without_categories # Call origial :tabs method from helpers/application_helper.rb
    if_current = (@current_tab == :categories || @current_tab == :categories)
    tabs << { :active => if_current, :url => { :controller => categories_path }, :text => "Categories" }
  end

end
