# frozen_string_literal: true

class HerbActionIndicationsController < ApplicationController
  before_action :set_herb_action_indication, only: %i[show update destroy]

  # GET /herb_action_indications
  def index
    @herb_action_indications = HerbActionIndication.all

    render json: @herb_action_indications
  end

  # GET /herb_action_indications/1
  def show
    render json: @herb_action_indication
  end

  # POST /herb_action_indications
  def create
    @herb_action_indication = HerbActionIndication.new(herb_action_indication_params)

    if @herb_action_indication.save
      render json: @herb_action_indication, status: :created, location: @herb_action_indication
    else
      render json: @herb_action_indication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_indications/1
  def update
    if @herb_action_indication.update(herb_action_indication_params)
      render json: @herb_action_indication
    else
      render json: @herb_action_indication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_indications/1
  def destroy
    @herb_action_indication.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_action_indication
    @herb_action_indication = HerbActionIndication.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_action_indication_params
    params.require(:herb_action_indication).permit(:herb_action_id, :indication)
  end
end
