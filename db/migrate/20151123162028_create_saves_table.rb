class CreateSavesTable < ActiveRecord::Migration
  def change
    create_table :saves do |t|
      t.references :agendas
      t.references :users
      t.timestamps
    end
  end
end
