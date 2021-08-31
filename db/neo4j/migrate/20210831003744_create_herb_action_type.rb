# frozen_string_literal: true

class CreateHerbActionType < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbActionType, :uuid
  end

  def down
    drop_constraint :HerbActionType, :uuid
  end
end
