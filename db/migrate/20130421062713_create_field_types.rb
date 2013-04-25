class CreateFieldTypes < ActiveRecord::Migration
  def change
    create_table :field_types do |t|
      t.string :Name
      t.string :defaultVal
      t.string :validation
      t.integer :min_length
      t.integer :max_length
      t.boolean :user_generated

      t.timestamps
    end
  end
end
