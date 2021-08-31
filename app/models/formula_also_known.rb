# frozen_string_literal: true

class FormulaAlsoKnown
  include ActiveGraph::Node
  property :name, type: String

  has_one :in_or_out_or_both, :formula, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
