# frozen_string_literal: true

class CreateHerbActionAnnotation < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :HerbActionAnnotation, :uuid
  end

  def down
    drop_constraint :HerbActionAnnotation, :uuid
  end
end
