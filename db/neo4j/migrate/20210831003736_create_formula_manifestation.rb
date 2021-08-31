# frozen_string_literal: true

class CreateFormulaManifestation < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaManifestation, :uuid
  end

  def down
    drop_constraint :FormulaManifestation, :uuid
  end
end
