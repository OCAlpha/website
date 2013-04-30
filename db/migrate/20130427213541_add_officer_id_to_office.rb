class AddOfficerIdToOffice < ActiveRecord::Migration
  def change
    add_column :offices, :officer_id, :integer
  end
end
