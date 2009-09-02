class AccountCategory < ActiveRecord::Base
  belongs_to :account
  belongs_to :category_account
end
