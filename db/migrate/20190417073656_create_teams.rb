scclass CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo

      t.timestamps
      add_reference :users, :team, index: true
      add_foreign_key :users, :teams
    end
  end
end
