class AddDefaltValue < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:items, :item_carat_weight, from: nil, to: 0.0)
  end
end
