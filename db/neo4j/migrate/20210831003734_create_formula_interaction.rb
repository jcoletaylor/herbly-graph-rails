# frozen_string_literal: true

class CreateFormulaInteraction < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaInteraction, :uuid
  end

  def down
    drop_constraint :FormulaInteraction, :uuid
  end
end
