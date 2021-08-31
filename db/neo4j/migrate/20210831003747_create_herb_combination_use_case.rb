# frozen_string_literal: true

class CreateHerbCombinationUseCase < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbCombinationUseCase, :uuid
  end

  def down
    drop_constraint :HerbCombinationUseCase, :uuid
  end
end
