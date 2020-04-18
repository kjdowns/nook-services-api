class AddAttributesToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :location, :string
    add_column :fish, :time, :string
    add_column :fish, :months_north, :string
    add_column :fish, :months_south, :string
  end
end
