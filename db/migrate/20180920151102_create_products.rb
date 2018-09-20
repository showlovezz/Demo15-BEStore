class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :tag
      t.integer :basic_price
      t.integer :special_price

      t.timestamps
    end
  end
end
