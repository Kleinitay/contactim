class CreateRecordFields < ActiveRecord::Migration
  def change
    create_table :record_fields do |t|
      t.integer :record_id
      t.integer :field_type_id
      t.string :data

      t.timestamps
    end
  end
end
