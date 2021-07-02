class AddPhotosToProduct < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :photo, foreign_key: true
  end
end
