class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :location
      t.string :description
      t.text :photos_data

      t.timestamps
    end
  end
end
