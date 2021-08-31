# frozen_string_literal: true

class FormulaNotesController < ApplicationController
  before_action :set_formula_note, only: %i[show update destroy]

  # GET /formula_notes
  def index
    @formula_notes = FormulaNote.all

    render json: @formula_notes
  end

  # GET /formula_notes/1
  def show
    render json: @formula_note
  end

  # POST /formula_notes
  def create
    @formula_note = FormulaNote.new(formula_note_params)

    if @formula_note.save
      render json: @formula_note, status: :created, location: @formula_note
    else
      render json: @formula_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /formula_notes/1
  def update
    if @formula_note.update(formula_note_params)
      render json: @formula_note
    else
      render json: @formula_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /formula_notes/1
  def destroy
    @formula_note.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formula_note
    @formula_note = FormulaNote.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formula_note_params
    params.require(:formula_note).permit(:formula_id, :note)
  end
end
