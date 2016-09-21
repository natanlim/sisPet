class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.text :description
      t.references :client, index: true, foreign_key: true
      t.decimal :price
      t.references :pet, index: true, foreign_key: true
      t.text :obs

      t.timestamps null: false
    end
  end
end
