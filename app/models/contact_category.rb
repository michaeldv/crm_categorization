class ContactCategory < ActiveRecord::Base
  belongs_to :contact
  belongs_to :category_contact
end
