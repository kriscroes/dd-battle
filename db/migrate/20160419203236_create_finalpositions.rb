class CreateFinalpositions < ActiveRecord::Migration
  def change
    create_table :finalpositions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
