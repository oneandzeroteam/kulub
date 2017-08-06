class AddUserattributeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :userage, :integer
    add_column :users, :usersex, :string
    add_column :users, :admin, :boolean
  end
end
