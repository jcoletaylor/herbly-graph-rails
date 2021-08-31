# frozen_string_literal: true

class CreateHerb < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Herb, :uuid
  end

  def down
    drop_constraint :Herb, :uuid
  end
end
