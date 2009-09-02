require "dispatcher"

Dispatcher.to_prepare do

  # Extend models to category associations.
  Account.send(:include, AccountCategoryAssociations)
  Contact.send(:include, ContactCategoryAssociations)

  # Add :categorization plugin helpers.
  ActionView::Base.send(:include, CategorizationHelper)

end




