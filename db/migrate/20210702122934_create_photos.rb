class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :photo_data

      t.timestamps
    end
  end
end
