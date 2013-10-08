class Sheet < ActiveRecord::Base
  attr_accessible :closed, :description, :name, :user_id, :visibility
  has_many :sheet_records, :dependant => :destroy
  belongs_to :user
  has_many :sheet_field_types, :dependant => :destroy
  has_many :field_types, :through => :sheet_field_types
  accepts_nested_attributes_for :sheet_records

  def add_record(record_hash, adding_user)
  	return ['Sheet closed'] if closed
  	errors = fields_validated?(record_hash)
  	return errors if errors.length > 0
  	adding_user_id = adding_user.present? ? adding_user.id : -1
  	record = self.sheet_records.create(user_id: added_by_user_id)
  	user_fields = []
  	if adding_user.present?
  		user_fields = adding_user.user_fields.pluck(:field_type_id)
  	end
  	record_hash.each do |type_id, data|
  		record.record_fields.create(field_type_id: type_id, data: data)
  		if !user_fields.empty? and !user_fields.includes?(type_id)
  			adding_user.user_fields.create(field_type_id: type_id, data: data)
  		end
  	end
  end

  def records_by_permission(current_user)
  	if visibility == 'all' || user_id == current_user.id
  		return sheet_records 
  	elsif visibility == 'sheet_users'
  		if sheet_records.pluck(:user_id).includes(current_user.id)
  			return sheet_records
  		end
  	elsif visibility == 'owner'
  		return sheet_records.where(user_id: current_user.id)
  	end
  end
end
