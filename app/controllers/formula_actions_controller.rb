# frozen_string_literal: true

class FormulaActionsController < ApplicationController
  before_action :set_formula_action, only: %i[show update destroy]

  # GET /formula_actions
  def index
    @formula_actions = FormulaAction.all

    render json: @formula_actions
  end

  # GET /formula_actions/1
  def show
    render json: @formula_action
  end

  # POST /formula_actions
  def create
    @formula_action = FormulaAction.new(formula_action_params)

    if @formula_action.save
      render json: @formula_action, status: :created, location: @formula_action
    else
      render json: @formula_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_actions/1
  def update
    if @formula_action.update(formula_action_params)
      render json: @formula_action
    else
      render json: @formula_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_actions/1
  def destroy
    @formula_action.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_action
    @formula_action = FormulaAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_action_params
    params.require(:formula_action).permit(:formula_id, :formula_named_action_id)
  end
end
