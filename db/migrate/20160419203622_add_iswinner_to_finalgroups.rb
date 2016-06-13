class AddIswinnerToFinalgroups < ActiveRecord::Migration
  def change
    add_column :finalgroups, :iswinner, :boolean
  end
end
