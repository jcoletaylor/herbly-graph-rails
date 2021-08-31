# frozen_string_literal: true

class HerbsController < ApplicationController
  before_action :set_herb, only: %i[show update destroy]

  # GET /herbs
  def index
    @herbs = Herb.all

    render json: @herbs
  end

  # GET /herbs/1
  def show
    render json: @herb
  end

  # POST /herbs
  def create
    @herb = Herb.new(herb_params)

    if @herb.save
      render json: @herb, status: :created, location: @herb
    else
      render json: @herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herbs/1
  def update
    if @herb.update(herb_params)
      render json: @herb
    else
      render json: @herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herbs/1
  def destroy
    @herb.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb
    @herb = Herb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_params
    params.require(:herb).permit(:name, :herb_category_id, :pinyin, :hanzi, :latin, :pharm_latin, :common_english)
  end
end
