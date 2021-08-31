# frozen_string_literal: true

class CreateFormulaModification < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaModification, :uuid
  end

  def down
    drop_constraint :FormulaModification, :uuid
  end
end
