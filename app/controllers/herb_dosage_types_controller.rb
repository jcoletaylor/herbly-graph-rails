# frozen_string_literal: true

class HerbDosageTypesController < ApplicationController
  before_action :set_herb_dosage_type, only: %i[show update destroy]

  # GET /herb_dosage_types
  def index
    @herb_dosage_types = HerbDosageType.all

    render json: @herb_dosage_types
  end

  # GET /herb_dosage_types/1
  def show
    render json: @herb_dosage_type
  end

  # POST /herb_dosage_types
  def create
    @herb_dosage_type = HerbDosageType.new(herb_dosage_type_params)

    if @herb_dosage_type.save
      render json: @herb_dosage_type, status: :created, location: @herb_dosage_type
    else
      render json: @herb_dosage_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_dosage_types/1
  def update
    if @herb_dosage_type.update(herb_dosage_type_params)
      render json: @herb_dosage_type
    else
      render json: @herb_dosage_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_dosage_types/1
  def destroy
    @herb_dosage_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_dosage_type
    @herb_dosage_type = HerbDosageType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_dosage_type_params
    params.require(:herb_dosage_type).permit(:name, :description)
  end
end
