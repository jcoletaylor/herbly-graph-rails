# frozen_string_literal: true

class CreateFormula < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Formula, :uuid
  end

  def down
    drop_constraint :Formula, :uuid
  end
end
