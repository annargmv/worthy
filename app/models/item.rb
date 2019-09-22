# frozen_string_literal: true

class Item < ApplicationRecord
  validates :item_type, presence: true, length: { minimum: 3, maximum: 25 }
  validates :item_carat_weight, presence: true
  validates :item_cut, presence: true
  validates :item_color, presence: true
  validates :item_clarity, presence: true

  def total_price(item_cut, item_color, item_clarity, item_carat_weight)
    cut_value = cut_value_calculation(item_cut)
    color_clarity_value = color_and_clarity_value_calculation(item_color, item_clarity)

    cut_color_clarity_sum = cut_value + color_clarity_value
    total_price = sprintf('%.2f' ,BigDecimal.new(item_carat_weight) * cut_color_clarity_sum)
    total_price
  end

  def cut_value_calculation(item_cut)
    cut_hash = {
      'Princes' => 1824,
      'Square Cushion' => 1925,
      'Radiant' => 1740,
      'Emerald' => 1411,
      'Round' => 2768,
      'Oval' => 2057
    }
    cut_hash[item_cut]
  end

  def color_and_clarity_value_calculation(item_color, item_clarity)
    color_clarity_hash = {
      'D' => {
        'IF' => 13000,
        'VVS1' => 10000,
        'VVS2' => 8000,
        'VS1' => 7000,
        'VS2' => 6500,
        'SI1' => 5500,
        'SI2' => 4500
      },
      'E' => {
        'IF' => 11000,
        'VVS1' => 9000,
        'VVS2' => 7500,
        'VS1' => 6500,
        'VS2' => 6000,
        'SI1' => 5000,
        'SI2' => 4300
      },
      'F' => {
        'IF' => 10000,
        'VVS1' => 9000,
        'VVS2' => 7500,
        'VS1' => 6000,
        'VS2' => 6000,
        'SI1' => 5000,
        'SI2' => 4000
      },
      'G' => {
        'IF' => 8000,
        'VVS1' => 6500,
        'VVS2' => 6500,
        'VS1' => 6000,
        'VS2' => 5500,
        'SI1' => 5000,
        'SI2' => 4000
      },
      'H' => {
        'IF' => 6300,
        'VVS1' => 6000,
        'VVS2' => 5500,
        'VS1' => 5500,
        'VS2' => 5300,
        'SI1' => 4700,
        'SI2' => 4000
      },
      'I' => {
        'IF' => 5700,
        'VVS1' => 5200,
        'VVS2' => 5000,
        'VS1' => 5000,
        'VS2' => 4700,
        'SI1' => 5000,
        'SI2' => 3500
      },
      'J' => {
        'IF' => 5000,
        'VVS1' => 4500,
        'VVS2' => 4000,
        'VS1' => 4000,
        'VS2' => 4000,
        'SI1' => 3700,
        'SI2' => 3300
      }
    }
    color_clarity_hash[item_color][item_clarity]
  end

end
