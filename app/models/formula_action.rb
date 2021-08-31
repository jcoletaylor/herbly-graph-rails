# frozen_string_literal: true

class FormulaAction
  include ActiveGraph::Node

  has_one :in_or_out_or_both, :formula, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
  has_one :in_or_out_or_both, :formula_named_action, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
