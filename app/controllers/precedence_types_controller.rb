# frozen_string_literal: true

class PrecedenceTypesController < ApplicationController
  before_action :set_precedence_type, only: %i[show update destroy]

  # GET /precedence_types
  def index
    @precedence_types = PrecedenceType.all

    render json: @precedence_types
  end

  # GET /precedence_types/1
  def show
    render json: @precedence_type
  end

  # POST /precedence_types
  def create
    @precedence_type = PrecedenceType.new(precedence_type_params)

    if @precedence_type.save
      render json: @precedence_type, status: :created, location: @precedence_type
    else
      render json: @precedence_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /precedence_types/1
  def update
    if @precedence_type.update(precedence_type_params)
      render json: @precedence_type
    else
      render json: @precedence_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /precedence_types/1
  def destroy
    @precedence_type.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_precedence_type
    @precedence_type = PrecedenceType.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def precedence_type_params
    params.require(:precedence_type).permit(:name, :description)
  end
end
