class AddLogoToStartups < ActiveRecord::Migration
  def change
    add_attachment :startups, :logo
  end
end
