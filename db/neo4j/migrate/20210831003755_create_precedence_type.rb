# frozen_string_literal: true

class CreatePrecedenceType < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :PrecedenceType, :uuid
  end

  def down
    drop_constraint :PrecedenceType, :uuid
  end
end
