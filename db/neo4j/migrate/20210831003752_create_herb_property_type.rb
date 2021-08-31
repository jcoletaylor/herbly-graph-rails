# frozen_string_literal: true

class CreateHerbPropertyType < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbPropertyType, :uuid
  end

  def down
    drop_constraint :HerbPropertyType, :uuid
  end
end
