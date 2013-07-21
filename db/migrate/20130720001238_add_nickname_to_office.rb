class AddNicknameToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :nickname, :string
  end
end
