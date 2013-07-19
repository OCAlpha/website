class CreateChargeTypes < ActiveRecord::Migration
  def change
    create_table :charge_types do |t|
      t.string :category
      t.decimal :value, :scale => 2
      t.timestamps
    end
  end
end
