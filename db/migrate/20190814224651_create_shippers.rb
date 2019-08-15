class CreateShippers < ActiveRecord::Migration[5.2]
  def change
    create_table :shippers do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :email
      t.timestamps
    end
  end
end
