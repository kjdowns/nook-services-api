class AddAttributesToBugs < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :location, :string
    add_column :bugs, :time, :string
    add_column :bugs, :months_north, :string
    add_column :bugs, :months_south, :string
  end
end
