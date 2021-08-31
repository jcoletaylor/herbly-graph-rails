# frozen_string_literal: true

class CreateHerbActionIndication < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbActionIndication, :uuid
  end

  def down
    drop_constraint :HerbActionIndication, :uuid
  end
end
