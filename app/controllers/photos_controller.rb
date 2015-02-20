class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render json: @photo
    end
  end

  def show
    @photo = Photo.find(params[:id])
    render json: @photo
  end

  def destroy
    @photo = Photo.find(params[:id])
    if @photo.destroy
      render json: @photo
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:image, :name, :description)
  end
end
