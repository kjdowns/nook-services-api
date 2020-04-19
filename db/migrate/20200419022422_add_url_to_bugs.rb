class AddUrlToBugs < ActiveRecord::Migration[6.0]
  def change
    add_column :bugs, :url, :string
  end
end
