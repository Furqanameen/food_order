class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.string :sir_name
      t.string :address
      t.integer :phone
      t.integer :posatl_code

      t.timestamps
    end
  end
end
