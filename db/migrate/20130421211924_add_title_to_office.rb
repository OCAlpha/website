class AddTitleToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :title, :string
  end
end
