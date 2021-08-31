# frozen_string_literal: true

class FormulaManifestationSymptom
  include ActiveGraph::Node

  has_one :in_or_out_or_both, :formula_manifestation, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :symptom, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
