# frozen_string_literal: true

class FormulaModificationSetsController < ApplicationController
  before_action :set_formula_modification_set, only: %i[show update destroy]

  # GET /formula_modification_sets
  def index
    @formula_modification_sets = FormulaModificationSet.all

    render json: @formula_modification_sets
  end

  # GET /formula_modification_sets/1
  def show
    render json: @formula_modification_set
  end

  # POST /formula_modification_sets
  def create
    @formula_modification_set = FormulaModificationSet.new(formula_modification_set_params)

    if @formula_modification_set.save
      render json: @formula_modification_set, status: :created, location: @formula_modification_set
    else
      render json: @formula_modification_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_modification_sets/1
  def update
    if @formula_modification_set.update(formula_modification_set_params)
      render json: @formula_modification_set
    else
      render json: @formula_modification_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_modification_sets/1
  def destroy
    @formula_modification_set.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_modification_set
    @formula_modification_set = FormulaModificationSet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_modification_set_params
    params.require(:formula_modification_set).permit(:formula_id, :purpose)
  end
end
