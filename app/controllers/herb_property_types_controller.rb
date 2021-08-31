# frozen_string_literal: true

class HerbPropertyTypesController < ApplicationController
  before_action :set_herb_property_type, only: %i[show update destroy]

  # GET /herb_property_types
  def index
    @herb_property_types = HerbPropertyType.all

    render json: @herb_property_types
  end

  # GET /herb_property_types/1
  def show
    render json: @herb_property_type
  end

  # POST /herb_property_types
  def create
    @herb_property_type = HerbPropertyType.new(herb_property_type_params)

    if @herb_property_type.save
      render json: @herb_property_type, status: :created, location: @herb_property_type
    else
      render json: @herb_property_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_property_types/1
  def update
    if @herb_property_type.update(herb_property_type_params)
      render json: @herb_property_type
    else
      render json: @herb_property_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_property_types/1
  def destroy
    @herb_property_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_property_type
    @herb_property_type = HerbPropertyType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_property_type_params
    params.require(:herb_property_type).permit(:name, :description)
  end
end
