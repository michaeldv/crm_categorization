require "dispatcher"

Dispatcher.to_prepare do

  # Extend :account model to category associations.
  Account.send(:include, AccountCategoryAssociations)

  # Add :categorization plugin helpers.
  ActionView::Base.send(:include, CategorizationHelper)

end

# Override :tabs in the application helper. <--- This appears to work only in production mode.
ActionView::Helpers::ApplicationHelper.send(:include, TabsHelper)




