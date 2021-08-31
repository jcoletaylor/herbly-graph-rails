# frozen_string_literal: true

class CreateHerbAction < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbAction, :uuid
  end

  def down
    drop_constraint :HerbAction, :uuid
  end
end
