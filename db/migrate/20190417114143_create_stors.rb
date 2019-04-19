class CreateStors < ActiveRecord::Migration[5.2]
  def change
    create_table :stors do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
