class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :address
      t.integer :telephone
      t.integer :cnpj
      t.string :razao_social

      t.timestamps
    end
  end
end
