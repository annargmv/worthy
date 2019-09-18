class ChnageCaratWeightToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :item_carat_weight, :float
  end
end
