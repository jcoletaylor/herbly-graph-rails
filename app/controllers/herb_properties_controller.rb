# frozen_string_literal: true

class HerbPropertiesController < ApplicationController
  before_action :set_herb_property, only: %i[show update destroy]

  # GET /herb_properties
  def index
    @herb_properties = HerbProperty.all

    render json: @herb_properties
  end

  # GET /herb_properties/1
  def show
    render json: @herb_property
  end

  # POST /herb_properties
  def create
    @herb_property = HerbProperty.new(herb_property_params)

    if @herb_property.save
      render json: @herb_property, status: :created, location: @herb_property
    else
      render json: @herb_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_properties/1
  def update
    if @herb_property.update(herb_property_params)
      render json: @herb_property
    else
      render json: @herb_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_properties/1
  def destroy
    @herb_property.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_property
    @herb_property = HerbProperty.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_property_params
    params.require(:herb_property).permit(:herb_id, :herb_property_type_id, :precedence_type_id, :property)
  end
end
