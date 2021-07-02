class RemoveUnwatedColums < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :photos_data
    remove_column :products, :type
  end
end
