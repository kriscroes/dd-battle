class CreateSemifinalgroups < ActiveRecord::Migration
  def change
    create_table :semifinalgroups do |t|
      t.references :startup, index: true, foreign_key: true
      t.references :semifinalposition, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
