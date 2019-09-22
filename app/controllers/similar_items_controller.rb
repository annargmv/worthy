class SimilarItemsController < ApplicationController
  def new
    @similar_items = SimilarItem.new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
