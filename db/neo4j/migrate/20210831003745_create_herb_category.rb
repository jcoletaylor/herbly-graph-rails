# frozen_string_literal: true

class CreateHerbCategory < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbCategory, :uuid
  end

  def down
    drop_constraint :HerbCategory, :uuid
  end
end
