class CreateQualificationgroups < ActiveRecord::Migration
  def change
    create_table :qualificationgroups do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :qualificationposition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
