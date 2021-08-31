# frozen_string_literal: true

class HerbWarningsController < ApplicationController
  before_action :set_herb_warning, only: %i[show update destroy]

  # GET /herb_warnings
  def index
    @herb_warnings = HerbWarning.all

    render json: @herb_warnings
  end

  # GET /herb_warnings/1
  def show
    render json: @herb_warning
  end

  # POST /herb_warnings
  def create
    @herb_warning = HerbWarning.new(herb_warning_params)

    if @herb_warning.save
      render json: @herb_warning, status: :created, location: @herb_warning
    else
      render json: @herb_warning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_warnings/1
  def update
    if @herb_warning.update(herb_warning_params)
      render json: @herb_warning
    else
      render json: @herb_warning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_warnings/1
  def destroy
    @herb_warning.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_warning
    @herb_warning = HerbWarning.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_warning_params
    params.require(:herb_warning).permit(:herb_id, :herb_warning_type_id, :warning)
  end
end
