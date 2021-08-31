# frozen_string_literal: true

class FormulaHerbsController < ApplicationController
  before_action :set_formula_herb, only: %i[show update destroy]

  # GET /formula_herbs
  def index
    @formula_herbs = FormulaHerb.all

    render json: @formula_herbs
  end

  # GET /formula_herbs/1
  def show
    render json: @formula_herb
  end

  # POST /formula_herbs
  def create
    @formula_herb = FormulaHerb.new(formula_herb_params)

    if @formula_herb.save
      render json: @formula_herb, status: :created, location: @formula_herb
    else
      render json: @formula_herb.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_herbs/1
  def update
    if @formula_herb.update(formula_herb_params)
      render json: @formula_herb
    else
      render json: @formula_herb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_herbs/1
  def destroy
    @formula_herb.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_herb
    @formula_herb = FormulaHerb.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_herb_params
    params.require(:formula_herb).permit(:formula_id, :herb_id, :dosage)
  end
end
