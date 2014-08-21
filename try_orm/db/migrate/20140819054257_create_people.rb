class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :email
      t.string :encrypted_password
      t.string :type

      t.timestamps
    end
  end
end
