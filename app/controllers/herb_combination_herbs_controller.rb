# frozen_string_literal: true

class HerbCombinationHerbsController < ApplicationController
  before_action :set_herb_combination_herb, only: %i[show update destroy]

  # GET /herb_combination_herbs
  def index
    @herb_combination_herbs = HerbCombinationHerb.all

    render json: @herb_combination_herbs
  end

  # GET /herb_combination_herbs/1
  def show
    render json: @herb_combination_herb
  end

  # POST /herb_combination_herbs
  def create
    @herb_combination_herb = HerbCombinationHerb.new(herb_combination_herb_params)

    if @herb_combination_herb.save
      render json: @herb_combination_herb, status: :created, location: @herb_combination_herb
    else
      render json: @herb_combination_herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combination_herbs/1
  def update
    if @herb_combination_herb.update(herb_combination_herb_params)
      render json: @herb_combination_herb
    else
      render json: @herb_combination_herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combination_herbs/1
  def destroy
    @herb_combination_herb.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination_herb
    @herb_combination_herb = HerbCombinationHerb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_herb_params
    params.require(:herb_combination_herb).permit(:herb_id, :herb_combination_id)
  end
end
