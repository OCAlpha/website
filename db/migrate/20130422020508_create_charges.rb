class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :office_id
      t.integer :user_id
      t.integer :charge_type_id
      t.decimal :override_value, :scale => 2
      t.boolean :reconciled

      t.timestamps
    end
  end
end
