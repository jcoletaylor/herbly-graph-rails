# frozen_string_literal: true

class CreateHerbNote < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbNote, :uuid
  end

  def down
    drop_constraint :HerbNote, :uuid
  end
end
