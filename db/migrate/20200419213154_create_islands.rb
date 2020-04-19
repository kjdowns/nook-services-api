class CreateIslands < ActiveRecord::Migration[6.0]
  def change
    create_table :islands do |t|
      t.string :name
      t.string :rate
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
