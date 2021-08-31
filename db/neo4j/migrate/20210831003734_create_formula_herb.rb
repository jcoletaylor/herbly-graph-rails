# frozen_string_literal: true

class CreateFormulaHerb < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaHerb, :uuid
  end

  def down
    drop_constraint :FormulaHerb, :uuid
  end
end
