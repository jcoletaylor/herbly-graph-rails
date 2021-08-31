# frozen_string_literal: true

class HerbCategoriesController < ApplicationController
  before_action :set_herb_category, only: %i[show update destroy]

  # GET /herb_categories
  def index
    @herb_categories = HerbCategory.all

    render json: @herb_categories
  end

  # GET /herb_categories/1
  def show
    render json: @herb_category
  end

  # POST /herb_categories
  def create
    @herb_category = HerbCategory.new(herb_category_params)

    if @herb_category.save
      render json: @herb_category, status: :created, location: @herb_category
    else
      render json: @herb_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_categories/1
  def update
    if @herb_category.update(herb_category_params)
      render json: @herb_category
    else
      render json: @herb_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_categories/1
  def destroy
    @herb_category.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_category
    @herb_category = HerbCategory.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_category_params
    params.require(:herb_category).permit(:name, :description)
  end
end
