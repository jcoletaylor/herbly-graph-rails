# frozen_string_literal: true

class CreateHerbWarning < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbWarning, :uuid
  end

  def down
    drop_constraint :HerbWarning, :uuid
  end
end
