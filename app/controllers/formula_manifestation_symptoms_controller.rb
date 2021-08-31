# frozen_string_literal: true

class FormulaManifestationSymptomsController < ApplicationController
  before_action :set_formula_manifestation_symptom, only: %i[show update destroy]

  # GET /formula_manifestation_symptoms
  def index
    @formula_manifestation_symptoms = FormulaManifestationSymptom.all

    render json: @formula_manifestation_symptoms
  end

  # GET /formula_manifestation_symptoms/1
  def show
    render json: @formula_manifestation_symptom
  end

  # POST /formula_manifestation_symptoms
  def create
    @formula_manifestation_symptom = FormulaManifestationSymptom.new(formula_manifestation_symptom_params)

    if @formula_manifestation_symptom.save
      render json: @formula_manifestation_symptom, status: :created, location: @formula_manifestation_symptom
    else
      render json: @formula_manifestation_symptom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_manifestation_symptoms/1
  def update
    if @formula_manifestation_symptom.update(formula_manifestation_symptom_params)
      render json: @formula_manifestation_symptom
    else
      render json: @formula_manifestation_symptom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_manifestation_symptoms/1
  def destroy
    @formula_manifestation_symptom.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_manifestation_symptom
    @formula_manifestation_symptom = FormulaManifestationSymptom.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_manifestation_symptom_params
    params.require(:formula_manifestation_symptom).permit(:formula_manifestation_id, :symptom_id)
  end
end
