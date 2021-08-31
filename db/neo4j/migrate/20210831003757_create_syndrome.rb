# frozen_string_literal: true

class CreateSyndrome < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Syndrome, :uuid
  end

  def down
    drop_constraint :Syndrome, :uuid
  end
end
