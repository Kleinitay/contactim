class CreateSheetRecords < ActiveRecord::Migration
  def change
    create_table :sheet_records do |t|
      t.integer :sheet_id
      t.user :user_id

      t.timestamps
    end
    add_index :sheet_records, :sheet_id
  end
end
