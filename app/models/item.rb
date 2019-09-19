class Item < ApplicationRecord
  validates :item_type, presence: true, length: { minimum: 3, maximum: 25 }
  validates :item_carat_weight, presence: true
  validates :item_cut, presence: true
  validates :item_color, presence: true
  validates :item_clarity, presence: true

  def total_price
    1*2
  end

  def cut_value

  end

  def color_value

  end

  def clarity_value

  end
end
