# frozen_string_literal: true

class HerbCombinationsController < ApplicationController
  before_action :set_herb_combination, only: %i[show update destroy]

  # GET /herb_combinations
  def index
    @herb_combinations = HerbCombination.all

    render json: @herb_combinations
  end

  # GET /herb_combinations/1
  def show
    render json: @herb_combination
  end

  # POST /herb_combinations
  def create
    @herb_combination = HerbCombination.new(herb_combination_params)

    if @herb_combination.save
      render json: @herb_combination, status: :created, location: @herb_combination
    else
      render json: @herb_combination.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combinations/1
  def update
    if @herb_combination.update(herb_combination_params)
      render json: @herb_combination
    else
      render json: @herb_combination.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combinations/1
  def destroy
    @herb_combination.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination
    @herb_combination = HerbCombination.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_params
    params.require(:herb_combination).permit(:description)
  end
end
