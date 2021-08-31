# frozen_string_literal: true

class CreateHerbDosage < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbDosage, :uuid
  end

  def down
    drop_constraint :HerbDosage, :uuid
  end
end
