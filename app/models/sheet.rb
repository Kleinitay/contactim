class Sheet < ActiveRecord::Base
  attr_accessible :closed, :description, :name, :user_id, :visibility
end
