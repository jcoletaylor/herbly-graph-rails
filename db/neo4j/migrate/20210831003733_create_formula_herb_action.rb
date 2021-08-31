# frozen_string_literal: true

class CreateFormulaHerbAction < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaHerbAction, :uuid
  end

  def down
    drop_constraint :FormulaHerbAction, :uuid
  end
end
