class AddOfficeIdToChargeTypes < ActiveRecord::Migration
  def change
    add_column :charge_types, :office_id, :integer
    remove_column :charges, :office_id, :integer
  end
end
