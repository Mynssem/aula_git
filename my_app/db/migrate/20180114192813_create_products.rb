class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.integer :validity
      t.string :provider

      t.timestamps
    end
  end
end
