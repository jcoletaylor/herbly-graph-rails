# frozen_string_literal: true

class CreateHerbCombinationHerb < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbCombinationHerb, :uuid
  end

  def down
    drop_constraint :HerbCombinationHerb, :uuid
  end
end
