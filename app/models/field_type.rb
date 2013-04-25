class FieldType < ActiveRecord::Base
  attr_accessible :Name, :defaultVal, :max_length, :min_length, :user_generated, :validation
end
