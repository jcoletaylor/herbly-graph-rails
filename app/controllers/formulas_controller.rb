# frozen_string_literal: true

class FormulasController < ApplicationController
  before_action :set_formula, only: %i[show update destroy]

  # GET /formulas
  def index
    @formulas = Formula.all

    render json: @formulas
  end

  # GET /formulas/1
  def show
    render json: @formula
  end

  # POST /formulas
  def create
    @formula = Formula.new(formula_params)

    if @formula.save
      render json: @formula, status: :created, location: @formula
    else
      render json: @formula.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formulas/1
  def update
    if @formula.update(formula_params)
      render json: @formula
    else
      render json: @formula.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formulas/1
  def destroy
    @formula.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula
    @formula = Formula.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_params
    params.require(:formula).permit(:name, :pinyin, :hanzi, :english, :common_english)
  end
end
