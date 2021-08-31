# frozen_string_literal: true

class CreateHerbDosageType < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbDosageType, :uuid
  end

  def down
    drop_constraint :HerbDosageType, :uuid
  end
end
