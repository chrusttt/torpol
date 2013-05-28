class PricelistsController < ApplicationController
  respond_to :json
  def ember
  end

  def index
    respond_with Pricelist.all
  end

  def show
    respond_with Pricelist.find(params[:id])
  end

  def create
    respond_with Pricelist.create(params[:pricelist])
  end

  def update
    respond_with Pricelist.update(params[:id], params[:pricelist])
  end

  def destroy
    respond_with Pricelist.destroy(params[:id])
  end
end