class Category < ActiveRecord::Base
  has_many :accounts, :through => :account_categories
  has_many :account_categories, :dependent => :destroy
  acts_as_tree :order => "name"

  def ancestors_name
    if parent
      parent.ancestors_name + parent.name + ':'
    else
      ""
    end
  end
  def long_name
    ancestors_name + name
  end  
end

#      has_many :account_categories, :dependent => :destroy
#      has_many :categories, :through => :account_categories, :uniq => true
#  belongs_to :user
#  belongs_to :account
#  belongs_to :assignee, :class_name => "User", :foreign_key => :assigned_to
#  has_one    :account_issue, :dependent => :destroy
#  has_one    :account, :through => :account_issue
#  has_many   :activities, :as => :subject, :order => 'created_at DESC'
#
#  simple_column_search :name, :match => :middle, :escape => lambda { |query| query.gsub(/[^\w\s\-]/, "").strip }
#
#  named_scope :with_ticket,   lambda { |ticket| { :conditions => ["bug_ticket LIKE ?", ticket] } }
#  named_scope :with_priority, lambda { |priority| { :conditions => ["priority LIKE ?", priority] } }
#  named_scope :only_priorities, lambda { |filters| { :conditions => [ "priority IN (?)", filters ] } }
#  named_scope :only_statuses, lambda { |filters| { :conditions => [ "status IN (?)", filters ] } }
#
#  named_scope :with_status, lambda { |status| { :conditions => ["status = ?", status] } }
#  named_scope :unresolved, :conditions => [ "status = ?", 0 ]
#  named_scope :pending,    :conditions => [ "status IS IN ?", [0,1] ]
#  named_scope :resolved,   :conditions => [ "status = ?", 2 ]
#
#  uses_user_permissions
#  acts_as_commentable
#  acts_as_paranoid
