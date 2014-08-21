class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :detailable_type
      t.integer :detailable_id

      t.timestamps
    end
  end
end
