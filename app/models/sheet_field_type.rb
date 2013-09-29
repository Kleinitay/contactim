class SheetFieldType < ActiveRecord::Base
  attr_accessible :field_type_id, :sheet_id
  belongs_to :sheet
  belongs_to :field_type
end
