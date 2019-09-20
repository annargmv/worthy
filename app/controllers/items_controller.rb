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
    # @item.item_cut = params[:item_cut]
    # @item.item_color = params[:item_color]
    # @item.item_clarity = params[:item_clarity]
    @item.save!

    respond_to do |format|
      format.js { render partial: 'items/result' }
    end
  end
end

private

def item_params
  params.permit(:item_type, :item_carat_weight, :item_cut, :item_color, :item_clarity)
end
