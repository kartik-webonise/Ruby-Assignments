class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      #t.decimal :id
      t.decimal :cost

      t.timestamps
    end
  end
end
