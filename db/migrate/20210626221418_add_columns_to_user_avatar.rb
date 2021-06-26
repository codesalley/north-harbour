class AddColumnsToUserAvatar < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :activate, :boolean, default: false
    add_column :users, :admin, :boolean, default: false
    add_column :users, :avatar_data, :text
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
