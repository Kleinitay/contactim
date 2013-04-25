class CreateUserFields < ActiveRecord::Migration
  def change
    create_table :user_fields do |t|
      t.integer :user_id
      t.integer :field_type_id
      t.string :data

      t.timestamps
    end
    add_index :user_fields, [:user_id, :field_type_id], unique: true
  end
end
