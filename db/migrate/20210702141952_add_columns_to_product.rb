class AddColumnsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :photo_one_data, :string
    add_column :products, :photo_two_data, :string
    add_column :products, :photo_three_data, :string
    add_column :products, :photo_four_data, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
