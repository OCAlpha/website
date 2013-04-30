class RenameTypeColumnInChargeType < ActiveRecord::Migration
  def up
    rename_column :charge_types, :type, :category
  end

  def down
    rename_column :charge_types, :category, :type
  end
end
