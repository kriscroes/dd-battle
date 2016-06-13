class CreateSemifinalpositions < ActiveRecord::Migration
  def change
    create_table :semifinalpositions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
