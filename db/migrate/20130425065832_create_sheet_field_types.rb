class CreateSheetFieldTypes < ActiveRecord::Migration
  def change
    create_table :sheet_field_types do |t|
      t.integer :sheet_id
      t.integer :field_type_id

      t.timestamps
    end
    add_index :sheet_field_types, [:sheet_id, :field_type_id], unique: true
  end
end
