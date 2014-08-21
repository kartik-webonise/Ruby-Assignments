class CreatePurchaseHistories < ActiveRecord::Migration
  def change
    create_table :purchase_histories do |t|
      t.date :purchase_date
      t.string :transaction_type
      t.integer :product_id
      t.integer :person_id
      t.timestamps
    end
  end
end
