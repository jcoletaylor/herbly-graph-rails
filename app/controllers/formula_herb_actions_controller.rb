# frozen_string_literal: true

class FormulaHerbActionsController < ApplicationController
  before_action :set_formula_herb_action, only: %i[show update destroy]

  # GET /formula_herb_actions
  def index
    @formula_herb_actions = FormulaHerbAction.all

    render json: @formula_herb_actions
  end

  # GET /formula_herb_actions/1
  def show
    render json: @formula_herb_action
  end

  # POST /formula_herb_actions
  def create
    @formula_herb_action = FormulaHerbAction.new(formula_herb_action_params)

    if @formula_herb_action.save
      render json: @formula_herb_action, status: :created, location: @formula_herb_action
    else
      render json: @formula_herb_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_herb_actions/1
  def update
    if @formula_herb_action.update(formula_herb_action_params)
      render json: @formula_herb_action
    else
      render json: @formula_herb_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_herb_actions/1
  def destroy
    @formula_herb_action.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_herb_action
    @formula_herb_action = FormulaHerbAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_herb_action_params
    params.require(:formula_herb_action).permit(:formula_herb_id, :formula_named_action_id)
  end
end
