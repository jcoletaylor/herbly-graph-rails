# frozen_string_literal: true

class HerbNotesController < ApplicationController
  before_action :set_herb_note, only: %i[show update destroy]

  # GET /herb_notes
  def index
    @herb_notes = HerbNote.all

    render json: @herb_notes
  end

  # GET /herb_notes/1
  def show
    render json: @herb_note
  end

  # POST /herb_notes
  def create
    @herb_note = HerbNote.new(herb_note_params)

    if @herb_note.save
      render json: @herb_note, status: :created, location: @herb_note
    else
      render json: @herb_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /herb_notes/1
  def update
    if @herb_note.update(herb_note_params)
      render json: @herb_note
    else
      render json: @herb_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /herb_notes/1
  def destroy
    @herb_note.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_herb_note
    @herb_note = HerbNote.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def herb_note_params
    params.require(:herb_note).permit(:herb_id, :note)
  end
end
