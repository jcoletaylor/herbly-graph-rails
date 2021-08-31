# frozen_string_literal: true

class FormulaManifestationsController < ApplicationController
  before_action :set_formula_manifestation, only: %i[show update destroy]

  # GET /formula_manifestations
  def index
    @formula_manifestations = FormulaManifestation.all

    render json: @formula_manifestations
  end

  # GET /formula_manifestations/1
  def show
    render json: @formula_manifestation
  end

  # POST /formula_manifestations
  def create
    @formula_manifestation = FormulaManifestation.new(formula_manifestation_params)

    if @formula_manifestation.save
      render json: @formula_manifestation, status: :created, location: @formula_manifestation
    else
      render json: @formula_manifestation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_manifestations/1
  def update
    if @formula_manifestation.update(formula_manifestation_params)
      render json: @formula_manifestation
    else
      render json: @formula_manifestation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_manifestations/1
  def destroy
    @formula_manifestation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_manifestation
    @formula_manifestation = FormulaManifestation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_manifestation_params
    params.require(:formula_manifestation).permit(:formula_id, :tongue, :tongue_coat, :pulse)
  end
end
