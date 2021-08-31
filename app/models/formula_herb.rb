# frozen_string_literal: true

class FormulaHerb
  include ActiveGraph::Node
  property :dosage, type: String

  has_one :in_or_out_or_both, :formula, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :herb, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
