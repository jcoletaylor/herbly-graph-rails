# frozen_string_literal: true

class FormulaAlsoKnownsController < ApplicationController
  before_action :set_formula_also_known, only: %i[show update destroy]

  # GET /formula_also_knowns
  def index
    @formula_also_knowns = FormulaAlsoKnown.all

    render json: @formula_also_knowns
  end

  # GET /formula_also_knowns/1
  def show
    render json: @formula_also_known
  end

  # POST /formula_also_knowns
  def create
    @formula_also_known = FormulaAlsoKnown.new(formula_also_known_params)

    if @formula_also_known.save
      render json: @formula_also_known, status: :created, location: @formula_also_known
    else
      render json: @formula_also_known.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_also_knowns/1
  def update
    if @formula_also_known.update(formula_also_known_params)
      render json: @formula_also_known
    else
      render json: @formula_also_known.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_also_knowns/1
  def destroy
    @formula_also_known.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_also_known
    @formula_also_known = FormulaAlsoKnown.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_also_known_params
    params.require(:formula_also_known).permit(:name, :formula_id)
  end
end
