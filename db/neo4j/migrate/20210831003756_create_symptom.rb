# frozen_string_literal: true

class CreateSymptom < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :Symptom, :uuid
  end

  def down
    drop_constraint :Symptom, :uuid
  end
end
