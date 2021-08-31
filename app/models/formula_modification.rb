# frozen_string_literal: true

class FormulaModification
  include ActiveGraph::Node
  property :modification, type: String

  has_one :in_or_out_or_both, :formula_modification_set, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :herb, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
