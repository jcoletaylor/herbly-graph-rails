# frozen_string_literal: true

class FormulaInteractionsController < ApplicationController
  before_action :set_formula_interaction, only: %i[show update destroy]

  # GET /formula_interactions
  def index
    @formula_interactions = FormulaInteraction.all

    render json: @formula_interactions
  end

  # GET /formula_interactions/1
  def show
    render json: @formula_interaction
  end

  # POST /formula_interactions
  def create
    @formula_interaction = FormulaInteraction.new(formula_interaction_params)

    if @formula_interaction.save
      render json: @formula_interaction, status: :created, location: @formula_interaction
    else
      render json: @formula_interaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_interactions/1
  def update
    if @formula_interaction.update(formula_interaction_params)
      render json: @formula_interaction
    else
      render json: @formula_interaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_interactions/1
  def destroy
    @formula_interaction.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_interaction
    @formula_interaction = FormulaInteraction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_interaction_params
    params.require(:formula_interaction).permit(:formula_id, :interaction)
  end
end
