# frozen_string_literal: true

class CreateHerbWarningType < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbWarningType, :uuid
  end

  def down
    drop_constraint :HerbWarningType, :uuid
  end
end
