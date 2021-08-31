# frozen_string_literal: true

class CreateFormulaSyndrome < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaSyndrome, :uuid
  end

  def down
    drop_constraint :FormulaSyndrome, :uuid
  end
end
