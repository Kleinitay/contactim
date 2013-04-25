class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.boolean :closed
      t.integer :visibility

      t.timestamps
    end
  end
end
