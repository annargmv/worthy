class ItemsTotalPriceType < ActiveRecord::Migration[5.2]
  def change
    change_column(:items, :item_total_price, :float, default: 0.0)
  end
end
