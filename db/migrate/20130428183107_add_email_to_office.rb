class AddEmailToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :email, :string
  end
end
