class CreateFinalgroups < ActiveRecord::Migration
  def change
    create_table :finalgroups do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :finalposition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
