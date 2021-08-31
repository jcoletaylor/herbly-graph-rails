# frozen_string_literal: true

class HerbActionsController < ApplicationController
  before_action :set_herb_action, only: %i[show update destroy]

  # GET /herb_actions
  def index
    @herb_actions = HerbAction.all

    render json: @herb_actions
  end

  # GET /herb_actions/1
  def show
    render json: @herb_action
  end

  # POST /herb_actions
  def create
    @herb_action = HerbAction.new(herb_action_params)

    if @herb_action.save
      render json: @herb_action, status: :created, location: @herb_action
    else
      render json: @herb_action.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_actions/1
  def update
    if @herb_action.update(herb_action_params)
      render json: @herb_action
    else
      render json: @herb_action.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_actions/1
  def destroy
    @herb_action.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_action
    @herb_action = HerbAction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_action_params
    params.require(:herb_action).permit(:herb_id, :herb_action_type_id)
  end
end
