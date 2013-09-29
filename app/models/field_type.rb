class FieldType < ActiveRecord::Base
  attr_accessible :name, :defaultVal, :max_length, :min_length, :user_generated, :validation
  belongs_to :sheet
  belongs_to :user
  scope :basic_fields, where(:user_generated => false)
end
