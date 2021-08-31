# frozen_string_literal: true

class CreateFormulaAlsoKnown < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaAlsoKnown, :uuid
  end

  def down
    drop_constraint :FormulaAlsoKnown, :uuid
  end
end
