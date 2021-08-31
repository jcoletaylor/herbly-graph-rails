# frozen_string_literal: true

class CreateCondition < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Condition, :uuid
  end

  def down
    drop_constraint :Condition, :uuid
  end
end
