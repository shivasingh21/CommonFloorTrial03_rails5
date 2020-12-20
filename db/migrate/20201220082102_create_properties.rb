class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :property_type
      t.string :property_status
      t.string :price
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
