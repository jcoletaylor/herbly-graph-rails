# frozen_string_literal: true

class FormulaSyndromesController < ApplicationController
  before_action :set_formula_syndrome, only: %i[show update destroy]

  # GET /formula_syndromes
  def index
    @formula_syndromes = FormulaSyndrome.all

    render json: @formula_syndromes
  end

  # GET /formula_syndromes/1
  def show
    render json: @formula_syndrome
  end

  # POST /formula_syndromes
  def create
    @formula_syndrome = FormulaSyndrome.new(formula_syndrome_params)

    if @formula_syndrome.save
      render json: @formula_syndrome, status: :created, location: @formula_syndrome
    else
      render json: @formula_syndrome.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_syndromes/1
  def update
    if @formula_syndrome.update(formula_syndrome_params)
      render json: @formula_syndrome
    else
      render json: @formula_syndrome.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_syndromes/1
  def destroy
    @formula_syndrome.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_syndrome
    @formula_syndrome = FormulaSyndrome.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_syndrome_params
    params.require(:formula_syndrome).permit(:formula_id, :syndrome_id)
  end
end
