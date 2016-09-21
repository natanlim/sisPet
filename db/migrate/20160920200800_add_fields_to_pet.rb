class AddFieldsToPet < ActiveRecord::Migration
  def change
    add_reference :pets, :customer, index: true, foreign_key: true
  end
end
