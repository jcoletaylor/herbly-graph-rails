# frozen_string_literal: true

class FormulaManifestation
  include ActiveGraph::Node
  property :tongue, type: String
  property :tongue_coat, type: String
  property :pulse, type: String

  has_one :in_or_out_or_both, :formula, type: :FILL_IN_RELATIONSHIP_TYPE_HERE
end
