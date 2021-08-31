# frozen_string_literal: true

class CreateFormulaContraindication < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaContraindication, :uuid
  end

  def down
    drop_constraint :FormulaContraindication, :uuid
  end
end
