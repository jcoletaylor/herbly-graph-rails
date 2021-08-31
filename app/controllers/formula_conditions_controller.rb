# frozen_string_literal: true

class FormulaConditionsController < ApplicationController
  before_action :set_formula_condition, only: %i[show update destroy]

  # GET /formula_conditions
  def index
    @formula_conditions = FormulaCondition.all

    render json: @formula_conditions
  end

  # GET /formula_conditions/1
  def show
    render json: @formula_condition
  end

  # POST /formula_conditions
  def create
    @formula_condition = FormulaCondition.new(formula_condition_params)

    if @formula_condition.save
      render json: @formula_condition, status: :created, location: @formula_condition
    else
      render json: @formula_condition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_conditions/1
  def update
    if @formula_condition.update(formula_condition_params)
      render json: @formula_condition
    else
      render json: @formula_condition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_conditions/1
  def destroy
    @formula_condition.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_condition
    @formula_condition = FormulaCondition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_condition_params
    params.require(:formula_condition).permit(:formula_id, :condition_id)
  end
end
