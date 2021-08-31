# frozen_string_literal: true

class HerbCombinationUseCasesController < ApplicationController
  before_action :set_herb_combination_use_case, only: %i[show update destroy]

  # GET /herb_combination_use_cases
  def index
    @herb_combination_use_cases = HerbCombinationUseCase.all

    render json: @herb_combination_use_cases
  end

  # GET /herb_combination_use_cases/1
  def show
    render json: @herb_combination_use_case
  end

  # POST /herb_combination_use_cases
  def create
    @herb_combination_use_case = HerbCombinationUseCase.new(herb_combination_use_case_params)

    if @herb_combination_use_case.save
      render json: @herb_combination_use_case, status: :created, location: @herb_combination_use_case
    else
      render json: @herb_combination_use_case.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_combination_use_cases/1
  def update
    if @herb_combination_use_case.update(herb_combination_use_case_params)
      render json: @herb_combination_use_case
    else
      render json: @herb_combination_use_case.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_combination_use_cases/1
  def destroy
    @herb_combination_use_case.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_combination_use_case
    @herb_combination_use_case = HerbCombinationUseCase.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_combination_use_case_params
    params.require(:herb_combination_use_case).permit(:herb_combination_id, :use_case)
  end
end
