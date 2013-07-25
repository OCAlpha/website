class AddReconciliationToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :reconciled, :boolean
  end
end
