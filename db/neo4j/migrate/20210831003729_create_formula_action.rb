# frozen_string_literal: true

class CreateFormulaAction < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaAction, :uuid
  end

  def down
    drop_constraint :FormulaAction, :uuid
  end
end
