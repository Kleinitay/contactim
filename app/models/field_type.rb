class FieldType < ActiveRecord::Base
  attr_accessible :name, :defaultVal, :max_length, :min_length, :user_generated, :validation
  scope :basic_fields, where(:user_generated => false)
end
