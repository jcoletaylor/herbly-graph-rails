# frozen_string_literal: true

class FormulaModificationSet
  include ActiveGraph::Node
  property :purpose, type: String

  has_one :in_or_out_or_both, :formula, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
