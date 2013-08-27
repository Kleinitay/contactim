class SheetRecord < ActiveRecord::Base
  attr_accessible :sheet_id, :user_id
  belongs_to :sheet
  belongs_to :user
  has_many :record_fields
end
