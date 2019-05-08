class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
