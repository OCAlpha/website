class AddKnightDataToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :story, :text
    add_column :users, :phone, :string
    add_column :users, :email_public, :boolean
    add_column :users, :phone_public, :boolean
  end
end
