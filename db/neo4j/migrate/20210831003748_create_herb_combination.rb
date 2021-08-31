# frozen_string_literal: true

class CreateHerbCombination < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbCombination, :uuid
  end

  def down
    drop_constraint :HerbCombination, :uuid
  end
end
