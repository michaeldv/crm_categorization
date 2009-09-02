class Category < ActiveRecord::Base

  def self.root_nodes
    find(:all, :conditions => 'parent_id IS NULL')
  end

  def self.find_children(start_id = nil)
    start_id.to_i == 0 ? root_nodes : find(start_id).direct_children
  end
  
  def leaf
    unknown? || children_count == 0
  end

  def to_json_with_leaf(options = {})
    self.to_json_without_leaf(options.merge(:methods => :leaf))
  end
  
  alias_method_chain :to_json, :leaf

  def ancestors_name
    if parent
      parent.ancestors_name + parent.text + ' - '
    else
      ""
    end
  end
  def long_name
    ancestors_name + text
  end   
end
