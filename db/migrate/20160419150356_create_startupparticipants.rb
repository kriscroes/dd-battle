class CreateStartupparticipants < ActiveRecord::Migration
  def change
    create_table :startupparticipants do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :participant, index: true, foreign_key: true
      t.text :role

      t.timestamps null: false
    end
  end
end
