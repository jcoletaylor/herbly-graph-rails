# frozen_string_literal: true

class CreateHerbProperty < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbProperty, :uuid
  end

  def down
    drop_constraint :HerbProperty, :uuid
  end
end
