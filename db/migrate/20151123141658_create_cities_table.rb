class CreateCitiesTable < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name, null: false
      t.string :state, null: false
      t.timestamps
    end
  end
end