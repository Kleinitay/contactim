class UserField < ActiveRecord::Base
  attr_accessible :data, :field_type_id, :user_id
end
