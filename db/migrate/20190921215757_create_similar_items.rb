class CreateSimilarItems < ActiveRecord::Migration[5.2]
  def change
    create_table :similar_items do |t|
      t.string :similar_item
      t.timestamps
    end
  end
end
