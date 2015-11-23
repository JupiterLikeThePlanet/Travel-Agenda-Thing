class CreateLocationsTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :description
      t.string :address
      t.string :name
      t.string :photo
      t.references :agenda
      t.timestamps
    end
  end
end
