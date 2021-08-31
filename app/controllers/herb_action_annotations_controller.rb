# frozen_string_literal: true

class HerbActionAnnotationsController < ApplicationController
  before_action :set_herb_action_annotation, only: %i[show update destroy]

  # GET /herb_action_annotations
  def index
    @herb_action_annotations = HerbActionAnnotation.all

    render json: @herb_action_annotations
  end

  # GET /herb_action_annotations/1
  def show
    render json: @herb_action_annotation
  end

  # POST /herb_action_annotations
  def create
    @herb_action_annotation = HerbActionAnnotation.new(herb_action_annotation_params)

    if @herb_action_annotation.save
      render json: @herb_action_annotation, status: :created, location: @herb_action_annotation
    else
      render json: @herb_action_annotation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_action_annotations/1
  def update
    if @herb_action_annotation.update(herb_action_annotation_params)
      render json: @herb_action_annotation
    else
      render json: @herb_action_annotation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_action_annotations/1
  def destroy
    @herb_action_annotation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_action_annotation
    @herb_action_annotation = HerbActionAnnotation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_action_annotation_params
    params.require(:herb_action_annotation).permit(:herb_action_id, :annotation)
  end
end
