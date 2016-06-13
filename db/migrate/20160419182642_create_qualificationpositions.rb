class CreateQualificationpositions < ActiveRecord::Migration
  def change
    create_table :qualificationpositions do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
