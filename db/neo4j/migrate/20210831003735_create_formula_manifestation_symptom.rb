# frozen_string_literal: true

class CreateFormulaManifestationSymptom < ActiveGraph::Migrations::Base
  disable_transactions!

  def up
    add_constraint :FormulaManifestationSymptom, :uuid
  end

  def down
    drop_constraint :FormulaManifestationSymptom, :uuid
  end
end
