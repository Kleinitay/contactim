class RecordField < ActiveRecord::Base
  attr_accessible :data, :field_type_id, :record_id
  belongs_to :sheet_record
end
