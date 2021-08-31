# frozen_string_literal: true

class FormulaNamedActionsController < ApplicationController
  before_action :set_formula_named_action, only: %i[show update destroy]

  # GET /formula_named_actions
  def index
    @formula_named_actions = FormulaNamedAction.all

    render json: @formula_named_actions
  end

  # GET /formula_named_actions/1
  def show
    render json: @formula_named_action
  end

  # POST /formula_named_actions
  def create
    @formula_named_action = FormulaNamedAction.new(formula_named_action_params)

    if @formula_named_action.save
      render json: @formula_named_action, status: :created, location: @formula_named_action
    else
      render json: @formula_named_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_named_actions/1
  def update
    if @formula_named_action.update(formula_named_action_params)
      render json: @formula_named_action
    else
      render json: @formula_named_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_named_actions/1
  def destroy
    @formula_named_action.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_named_action
    @formula_named_action = FormulaNamedAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_named_action_params
    params.require(:formula_named_action).permit(:name)
  end
end
