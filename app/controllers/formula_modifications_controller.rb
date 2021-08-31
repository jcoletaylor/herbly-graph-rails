# frozen_string_literal: true

class FormulaModificationsController < ApplicationController
  before_action :set_formula_modification, only: %i[show update destroy]

  # GET /formula_modifications
  def index
    @formula_modifications = FormulaModification.all

    render json: @formula_modifications
  end

  # GET /formula_modifications/1
  def show
    render json: @formula_modification
  end

  # POST /formula_modifications
  def create
    @formula_modification = FormulaModification.new(formula_modification_params)

    if @formula_modification.save
      render json: @formula_modification, status: :created, location: @formula_modification
    else
      render json: @formula_modification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_modifications/1
  def update
    if @formula_modification.update(formula_modification_params)
      render json: @formula_modification
    else
      render json: @formula_modification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_modifications/1
  def destroy
    @formula_modification.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_modification
    @formula_modification = FormulaModification.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_modification_params
    params.require(:formula_modification).permit(:formula_modification_set_id, :herb_id, :modification)
  end
end
