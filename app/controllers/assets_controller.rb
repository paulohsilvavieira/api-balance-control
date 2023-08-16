class AssetsController < ApplicationController
  def index
    render json: Asset.all
  end

  def show
    render json: Asset.find(params[:id])
  end

  def create
    @asset = Asset.new(asset_params)
    if @asset.save
      render json: @asset, status: :created, location: @asset
    else
      render json: @asset.errors, status: :unprocessable_entity
    end
  end

  def update
    asset = Asset.find(params[:id])
    asset.update(asset_params)
    render json: asset
  end

  private

  def asset_params
    params.require(:asset).permit(:name, :code, :category)
  end
end
