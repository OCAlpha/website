class AddDutiesToOffices < ActiveRecord::Migration
  def change
    add_column :offices, :duties, :text
  end
end
