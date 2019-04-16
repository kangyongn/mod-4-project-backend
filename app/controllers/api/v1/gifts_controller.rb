class Api::V1::GiftsController < ApplicationController
  before_action :get_gift, only: [:show, :update, :destroy]

  def index
    @gifts = Gift.all
    render json: @gifts
  end

  def show
    render json: @gift
  end

  def create
    @gift = Gift.new(gift_params)
    if @gift.save
      render json: @gift, status: :created
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  def update
    if @gift.update(gift_params)
      render json: @gift
    else
      render json: @gift.errors, status: :unprocessable_entity
    end
  end

  def destroy
    render json: @gift
    @gift.destroy
  end


  private

  def gift_params
    params.permit(:note, :img, :sender_id, :user_id, :date, :song, :opened)
  end

  def get_gift
    @gift = Gift.find(params[:id])
  end
end
