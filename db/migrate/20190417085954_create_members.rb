class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :email
      t.string :locaion
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
