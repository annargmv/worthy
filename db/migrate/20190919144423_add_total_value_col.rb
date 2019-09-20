# frozen_string_literal: true

class AddTotalValueCol < ActiveRecord::Migration[5.2]
  def change
    add_column(:items, :item_total_price, :string, default: 0.00)
  end
end
