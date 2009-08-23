class AccountCategory < ActiveRecord::Base
  belongs_to :account
  belongs_to :category
  validates_presence_of :account_id, :category_id
end
