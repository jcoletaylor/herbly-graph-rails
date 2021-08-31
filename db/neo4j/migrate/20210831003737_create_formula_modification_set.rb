# frozen_string_literal: true

class CreateFormulaModificationSet < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaModificationSet, :uuid
  end

  def down
    drop_constraint :FormulaModificationSet, :uuid
  end
end
