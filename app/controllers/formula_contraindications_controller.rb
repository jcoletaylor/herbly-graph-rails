# frozen_string_literal: true

class FormulaContraindicationsController < ApplicationController
  before_action :set_formula_contraindication, only: %i[show update destroy]

  # GET /formula_contraindications
  def index
    @formula_contraindications = FormulaContraindication.all

    render json: @formula_contraindications
  end

  # GET /formula_contraindications/1
  def show
    render json: @formula_contraindication
  end

  # POST /formula_contraindications
  def create
    @formula_contraindication = FormulaContraindication.new(formula_contraindication_params)

    if @formula_contraindication.save
      render json: @formula_contraindication, status: :created, location: @formula_contraindication
    else
      render json: @formula_contraindication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_contraindications/1
  def update
    if @formula_contraindication.update(formula_contraindication_params)
      render json: @formula_contraindication
    else
      render json: @formula_contraindication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_contraindications/1
  def destroy
    @formula_contraindication.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_contraindication
    @formula_contraindication = FormulaContraindication.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_contraindication_params
    params.require(:formula_contraindication).permit(:formula_id, :contraindication)
  end
end
