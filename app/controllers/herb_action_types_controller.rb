# frozen_string_literal: true

class HerbActionTypesController < ApplicationController
  before_action :set_herb_action_type, only: %i[show update destroy]

  # GET /herb_action_types
  def index
    @herb_action_types = HerbActionType.all

    render json: @herb_action_types
  end

  # GET /herb_action_types/1
  def show
    render json: @herb_action_type
  end

  # POST /herb_action_types
  def create
    @herb_action_type = HerbActionType.new(herb_action_type_params)

    if @herb_action_type.save
      render json: @herb_action_type, status: :created, location: @herb_action_type
    else
      render json: @herb_action_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_types/1
  def update
    if @herb_action_type.update(herb_action_type_params)
      render json: @herb_action_type
    else
      render json: @herb_action_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_types/1
  def destroy
    @herb_action_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_action_type
    @herb_action_type = HerbActionType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_action_type_params
    params.require(:herb_action_type).permit(:name, :description)
  end
end
