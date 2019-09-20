# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item_type
      t.decimal :item_carat_weight
      t.string :item_cut
      t.string :item_color
      t.string :item_clarity
      t.timestamps
    end
  end
end
