# frozen_string_literal: true

class HerbDosagesController < ApplicationController
  before_action :set_herb_dosage, only: %i[show update destroy]

  # GET /herb_dosages
  def index
    @herb_dosages = HerbDosage.all

    render json: @herb_dosages
  end

  # GET /herb_dosages/1
  def show
    render json: @herb_dosage
  end

  # POST /herb_dosages
  def create
    @herb_dosage = HerbDosage.new(herb_dosage_params)

    if @herb_dosage.save
      render json: @herb_dosage, status: :created, location: @herb_dosage
    else
      render json: @herb_dosage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_dosages/1
  def update
    if @herb_dosage.update(herb_dosage_params)
      render json: @herb_dosage
    else
      render json: @herb_dosage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_dosages/1
  def destroy
    @herb_dosage.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_dosage
    @herb_dosage = HerbDosage.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_dosage_params
    params.require(:herb_dosage).permit(:herb_id, :herb_dosage_type_id, :dosage)
  end
end
