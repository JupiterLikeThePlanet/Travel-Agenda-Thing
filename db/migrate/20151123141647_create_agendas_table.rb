class CreateAgendasTable < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.references :city
      t.references :user
      t.string :name
      t.timestamps
    end
  end
end
