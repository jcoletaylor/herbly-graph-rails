# frozen_string_literal: true

class CreateFormulaCondition < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaCondition, :uuid
  end

  def down
    drop_constraint :FormulaCondition, :uuid
  end
end
