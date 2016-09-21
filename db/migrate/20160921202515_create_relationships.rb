class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :service, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
