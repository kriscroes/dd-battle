class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.text :description
      t.references :track, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
