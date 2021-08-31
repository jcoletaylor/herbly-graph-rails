# frozen_string_literal: true

class CreateFormulaNamedAction < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaNamedAction, :uuid
  end

  def down
    drop_constraint :FormulaNamedAction, :uuid
  end
end
