# frozen_string_literal: true

class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.item_total_price = @item.total_price(params[:item_cut],
                                               params[:item_color],
                                               params[:item_clarity],
                                               params[:item_carat_weight])
    @item.save!

    @similar_items = SimilarItem.new(same_item_params)
    @similar_items.similar_item = @item.item_cut
    @similar_items.items_image(@similar_items.similar_item)
    @similar_items.save!

    respond_to do |format|
      format.js { render partial: 'items/result' }
    end
  end
end

private

def item_params
  params.permit(:item_type, :item_carat_weight, :item_cut, :item_color, :item_clarity)
end

def same_item_params
  params.permit(:similar_item, :image_url)
end
