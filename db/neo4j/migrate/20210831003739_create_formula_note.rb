# frozen_string_literal: true

class CreateFormulaNote < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaNote, :uuid
  end

  def down
    drop_constraint :FormulaNote, :uuid
  end
end
