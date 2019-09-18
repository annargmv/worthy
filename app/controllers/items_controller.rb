class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to jewelry_pricing_path
  end
end


private

def item_params
  params.permit(:item_type, :item_carat_weight, :item_cut, :item_color, :item_clarity)
end